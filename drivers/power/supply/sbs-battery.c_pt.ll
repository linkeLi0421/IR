; ModuleID = '/llk/IR/drivers/power/supply/sbs-battery.c_pt.bc'
source_filename = "../drivers/power/supply/sbs-battery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type {}
%struct.chip_data = type { i32, i8, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%union.power_supply_propval = type { i32 }
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
%struct.sbs_info = type { ptr, ptr, i8, ptr, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.mutex, i32, i32, [3 x [33 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sbs_platform_data = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_sbs_battery__249_1287_sbs_battery_driver_init6 = internal global ptr @sbs_battery_driver_init, section ".initcall6.init", align 4
@sbs_battery_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sbs_probe, ptr null, ptr @sbs_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sbs_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sbs_pm_ops, ptr null, ptr null }, ptr @sbs_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_sbs_battery_driver_exit = internal global ptr @sbs_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [51 x i8] c"sbs_battery.description=SBS battery monitor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [50 x i8] c"sbs_battery.file=drivers/power/supply/sbs-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [24 x i8] c"sbs_battery.license=GPL\00", section ".modinfo", align 1
@__param_str_force_load = internal constant [23 x i8] c"sbs_battery.force_load\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_load = internal global i8 0, align 1
@__param_force_load = internal constant %struct.kernel_param { ptr @__param_str_force_load, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @force_load } }, section "__param", align 4
@__UNIQUE_ID_force_loadtype253 = internal constant [37 x i8] c"sbs_battery.parmtype=force_load:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_load254 = internal constant [87 x i8] c"sbs_battery.parm=force_load:Attempt to load the driver even if no battery is connected\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sbs-battery\00", align 1
@sbs_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sbs,sbs-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq20z65\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq20z75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@sbs_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sbs_suspend, ptr null, ptr @sbs_suspend, ptr null, ptr @sbs_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sbs_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq20z65\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq20z75\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sbs-battery\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@sbs_default_desc = internal constant %struct.power_supply_desc { ptr null, i32 1, ptr null, i32 0, ptr @sbs_properties, i32 31, ptr @sbs_get_property, ptr null, ptr null, ptr @sbs_external_power_changed, ptr null, i8 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sbs-%s\00", align 1
@sbs_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&chip->mode_lock\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sbs,i2c-retry-count\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"sbs,poll-retry-count\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"sbs,disable-charger-broadcasts\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"sbs,battery-detect\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Failed to get gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to get gpio as irq: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to get present status\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"%s: battery gas gauge device registered\0A\00", align 1
@sbs_properties = internal constant [31 x i32] [i32 0, i32 51, i32 2, i32 3, i32 6, i32 7, i32 12, i32 17, i32 18, i32 47, i32 50, i32 52, i32 60, i32 61, i32 63, i32 75, i32 11, i32 10, i32 45, i32 43, i32 41, i32 26, i32 24, i32 22, i32 30, i32 32, i32 70, i32 71, i32 72, i32 74, i32 73], align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"%s: INVALID property\0A\00", align 1
@__func__.sbs_get_property = private unnamed_addr constant [17 x i8] c"sbs_get_property\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"google,cros-ec-i2c-tunnel\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Disabling PEC because of broken Cros-EC implementation\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Failed to disable charger broadcasting: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LION\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"LiP\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Unknown chemistry: %s\0A\00", align 1
@sbs_data = internal unnamed_addr constant [28 x %struct.chip_data] [%struct.chip_data { i32 3, i8 0, i32 0, i32 65535 }, %struct.chip_data { i32 -1, i8 3, i32 0, i32 65535 }, %struct.chip_data { i32 52, i8 8, i32 0, i32 65535 }, %struct.chip_data { i32 12, i8 9, i32 0, i32 65535 }, %struct.chip_data { i32 17, i8 10, i32 -32768, i32 32767 }, %struct.chip_data { i32 18, i8 11, i32 -32768, i32 32767 }, %struct.chip_data { i32 50, i8 12, i32 0, i32 100 }, %struct.chip_data { i32 47, i8 13, i32 0, i32 100 }, %struct.chip_data { i32 60, i8 17, i32 0, i32 65535 }, %struct.chip_data { i32 61, i8 18, i32 0, i32 65535 }, %struct.chip_data { i32 63, i8 19, i32 0, i32 65535 }, %struct.chip_data { i32 0, i8 22, i32 0, i32 65535 }, %struct.chip_data { i32 51, i8 22, i32 0, i32 65535 }, %struct.chip_data { i32 7, i8 23, i32 0, i32 65535 }, %struct.chip_data { i32 75, i8 28, i32 0, i32 65535 }, %struct.chip_data { i32 45, i8 15, i32 0, i32 65535 }, %struct.chip_data { i32 26, i8 15, i32 0, i32 65535 }, %struct.chip_data { i32 43, i8 16, i32 0, i32 65535 }, %struct.chip_data { i32 24, i8 16, i32 0, i32 65535 }, %struct.chip_data { i32 41, i8 24, i32 0, i32 65535 }, %struct.chip_data { i32 22, i8 24, i32 0, i32 65535 }, %struct.chip_data { i32 11, i8 25, i32 0, i32 65535 }, %struct.chip_data { i32 10, i8 25, i32 0, i32 65535 }, %struct.chip_data { i32 6, i8 34, i32 0, i32 65535 }, %struct.chip_data { i32 74, i8 32, i32 0, i32 65535 }, %struct.chip_data { i32 73, i8 33, i32 0, i32 65535 }, %struct.chip_data { i32 30, i8 20, i32 0, i32 65535 }, %struct.chip_data { i32 32, i8 21, i32 0, i32 65535 }], align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"%s: Invalid Property - %d\0A\00", align 1
@__func__.sbs_get_property_index = private unnamed_addr constant [23 x i8] c"sbs_get_property_index\00", align 1
@sbs_serial = internal global [5 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@sbs_read_string_data_fallback.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.24 = private unnamed_addr constant [100 x i8] c"I2C adapter does not support I2C_FUNC_SMBUS_READ_BLOCK_DATA.\0AFallback method does not support PEC.\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"%s: Returned block_length is longer than 0x%x\0A\00", align 1
@__func__.sbs_read_string_data_fallback = private unnamed_addr constant [30 x i8] c"sbs_read_string_data_fallback\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_force_load254, ptr @__UNIQUE_ID_force_loadtype253, ptr @__UNIQUE_ID_license252, ptr @__exitcall_sbs_battery_driver_exit, ptr @__initcall__kmod_sbs_battery__249_1287_sbs_battery_driver_init6, ptr @__param_force_load, ptr @sbs_battery_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sbs_battery_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sbs_battery_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sbs_battery_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @sbs_battery_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbs_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  %3 = alloca %union.power_supply_propval, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %7 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 20, i1 false)
  %8 = tail call ptr @devm_kmemdup(ptr noundef %4, ptr noundef nonnull @sbs_default_desc, i32 noundef 52, i32 noundef 3264) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %18 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %4, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %17) #11
  store ptr %18, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %115, label %20

20:                                               ; preds = %16
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 208, i32 noundef 3520) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %115, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @device_get_match_data(ptr noundef %4) #11
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 11
  store i32 %25, ptr %26, align 4
  store ptr %0, ptr %21, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %2, align 4
  %29 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %21, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 5
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 12
  store i32 -1, ptr %31, align 4
  %32 = getelementptr %struct.sbs_info, ptr %21, i32 0, i32 13, i32 0
  store i8 0, ptr %32, align 1
  %33 = getelementptr %struct.sbs_info, ptr %21, i32 0, i32 13, i32 1
  store i8 0, ptr %33, align 1
  %34 = getelementptr %struct.sbs_info, ptr %21, i32 0, i32 13, i32 2
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull @sbs_probe.__key) #11
  %36 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 7
  %37 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %36, i32 noundef 1) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  store i32 0, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %23
  %41 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 8
  %42 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %41, i32 noundef 1) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, ptr %41, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = icmp eq ptr %6, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = load i32, ptr %36, align 4
  br label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sbs_platform_data, ptr %6, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %41, align 4
  %52 = load i32, ptr %6, align 4
  store i32 %52, ptr %36, align 4
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i32 [ %48, %47 ], [ %52, %49 ]
  %55 = add i32 %54, 1
  store i32 %55, ptr %36, align 4
  %56 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.5) #11
  %57 = xor i1 %56, true
  %58 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 4
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 4
  %60 = tail call ptr @devm_gpiod_get_optional(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 1) #11
  %61 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 3
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = ptrtoint ptr %60 to i32
  %65 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %64, ptr noundef nonnull @.str.7) #11
  br label %115

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %21, ptr %67, align 8
  %68 = icmp eq ptr %60, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %60) #11
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %70) #12
  br label %83

73:                                               ; preds = %69
  %74 = load ptr, ptr %11, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load ptr, ptr %4, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi ptr [ %77, %76 ], [ %74, %73 ]
  %80 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %70, ptr noundef null, ptr noundef nonnull @sbs_irq, i32 noundef 8195, ptr noundef %79, ptr noundef nonnull %21) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %80) #12
  br label %83

83:                                               ; preds = %82, %78, %72, %66
  %84 = load i8, ptr @force_load, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load ptr, ptr %61, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  %90 = call fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %3)
  %91 = icmp sgt i32 %90, -1
  %92 = load i32, ptr %3, align 4
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %98

96:                                               ; preds = %89
  %97 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef -19, ptr noundef nonnull @.str.10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %115

98:                                               ; preds = %95, %86, %83
  %99 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 9
  store i32 -32, ptr %99, align 4
  %100 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 9, i32 0, i32 1
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 9, i32 0, i32 1, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 9, i32 0, i32 2
  store ptr @sbs_delayed_work, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %103, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %104 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %99) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = call ptr @devm_power_supply_register(ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %2) #11
  %108 = getelementptr inbounds %struct.sbs_info, ptr %21, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  %109 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = ptrtoint ptr %107 to i32
  %112 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %111, ptr noundef nonnull @.str.11) #11
  br label %115

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %114) #12
  br label %115

115:                                              ; preds = %113, %110, %98, %96, %63, %20, %16, %1
  %116 = phi i32 [ %65, %63 ], [ %112, %110 ], [ 0, %113 ], [ %97, %96 ], [ -12, %1 ], [ -12, %16 ], [ -12, %20 ], [ %104, %98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbs_alert(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %9) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = icmp ne i32 %10, 0
  tail call fastcc void @sbs_update_presence(ptr noundef %5, i1 noundef zeroext %13) #11
  tail call void @power_supply_changed(ptr noundef %7) #11
  br label %14

14:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbs_irq(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %6) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = icmp ne i32 %7, 0
  tail call fastcc void @sbs_update_presence(ptr noundef %1, i1 noundef zeroext %10) #11
  tail call void @power_supply_changed(ptr noundef %4) #11
  br label %11

11:                                               ; preds = %9, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %9, label %54, label %13

13:                                               ; preds = %3
  br i1 %12, label %14, label %41

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %18, %14 ], [ %11, %13 ]
  %16 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext 6) #11
  %17 = icmp slt i32 %16, 0
  %18 = add nsw i32 %15, -1
  %19 = icmp ugt i32 %15, 1
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %14, label %21

21:                                               ; preds = %14
  br i1 %17, label %22, label %24

22:                                               ; preds = %21
  %23 = icmp eq i32 %1, 3
  br i1 %23, label %83, label %86

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.sbs_info, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %29, %24
  %30 = phi i32 [ %33, %29 ], [ %27, %24 ]
  %31 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 0) #11
  %32 = icmp slt i32 %31, 0
  %33 = add nsw i32 %30, -1
  %34 = icmp ugt i32 %30, 1
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %29, label %36

36:                                               ; preds = %29
  br i1 %32, label %37, label %39

37:                                               ; preds = %36
  %38 = icmp eq i32 %1, 3
  br i1 %38, label %83, label %86

39:                                               ; preds = %36
  %40 = icmp ugt i32 %31, 65535
  br i1 %40, label %83, label %41

41:                                               ; preds = %39, %24, %13
  %42 = phi i32 [ %31, %39 ], [ 0, %24 ], [ 0, %13 ]
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 15
  switch i32 %1, label %86 [
    i32 3, label %45
    i32 2, label %48
  ]

45:                                               ; preds = %41
  %46 = icmp ne i32 %44, 15
  %47 = zext i1 %46 to i32
  br label %83

48:                                               ; preds = %41
  switch i32 %44, label %51 [
    i32 9, label %83
    i32 11, label %49
    i32 12, label %50
  ]

49:                                               ; preds = %48
  br label %83

50:                                               ; preds = %48
  br label %83

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i1 @sbs_bat_needs_calibration(ptr noundef %0) #11
  %53 = select i1 %52, i32 10, i32 1
  br label %83

54:                                               ; preds = %3
  br i1 %12, label %55, label %65

55:                                               ; preds = %55, %54
  %56 = phi i32 [ %59, %55 ], [ %11, %54 ]
  %57 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 22) #11
  %58 = icmp slt i32 %57, 0
  %59 = add nsw i32 %56, -1
  %60 = icmp ugt i32 %56, 1
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %55, label %62

62:                                               ; preds = %55
  br i1 %58, label %63, label %65

63:                                               ; preds = %62
  %64 = icmp eq i32 %1, 3
  br i1 %64, label %83, label %86

65:                                               ; preds = %62, %54
  %66 = icmp eq i32 %1, 3
  br i1 %66, label %83, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.sbs_info, ptr %68, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %72, %67
  %73 = phi i32 [ %76, %72 ], [ %70, %67 ]
  %74 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 3) #11
  %75 = icmp slt i32 %74, 0
  %76 = add nsw i32 %73, -1
  %77 = icmp ugt i32 %73, 1
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %72, label %79

79:                                               ; preds = %72
  %80 = and i32 %74, -2147483520
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %83, label %82

82:                                               ; preds = %79, %67
  br label %83

83:                                               ; preds = %82, %79, %65, %63, %51, %50, %49, %48, %45, %39, %37, %22
  %84 = phi i32 [ 0, %82 ], [ 3, %50 ], [ 2, %49 ], [ 0, %22 ], [ 0, %37 ], [ 0, %39 ], [ %47, %45 ], [ 5, %48 ], [ %53, %51 ], [ 0, %63 ], [ 1, %65 ], [ 10, %79 ]
  %85 = phi i32 [ 0, %82 ], [ 0, %50 ], [ 0, %49 ], [ %16, %22 ], [ %31, %37 ], [ 0, %39 ], [ 0, %45 ], [ 0, %48 ], [ 0, %51 ], [ 0, %63 ], [ 0, %65 ], [ 0, %79 ]
  store i32 %84, ptr %2, align 4
  br label %86

86:                                               ; preds = %83, %63, %41, %37, %22
  %87 = phi i32 [ %57, %63 ], [ %16, %22 ], [ %31, %37 ], [ 0, %41 ], [ %85, %83 ]
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbs_delayed_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %11 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 22) #11
  %12 = icmp slt i32 %11, 0
  %13 = add nsw i32 %10, -1
  %14 = icmp ugt i32 %10, 1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %9, label %16

16:                                               ; preds = %9
  br i1 %12, label %17, label %19

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %0, i32 -12
  store i32 0, ptr %18, align 4
  br label %73

19:                                               ; preds = %16
  %20 = and i32 %11, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = and i32 %11, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %1
  br label %26

26:                                               ; preds = %25, %22, %19
  %27 = phi i1 [ true, %22 ], [ false, %19 ], [ true, %25 ]
  %28 = phi i1 [ false, %22 ], [ true, %19 ], [ false, %25 ]
  %29 = phi i32 [ 2, %22 ], [ 4, %19 ], [ 1, %25 ]
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sbs_info, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %36, %26
  %37 = phi i32 [ %40, %36 ], [ %34, %26 ]
  %38 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %30, i8 noundef zeroext 10) #11
  %39 = icmp slt i32 %38, 0
  %40 = add nsw i32 %37, -1
  %41 = icmp ugt i32 %37, 1
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %36, label %43

43:                                               ; preds = %36
  br i1 %39, label %56, label %44

44:                                               ; preds = %43, %26
  %45 = phi i32 [ %38, %43 ], [ 0, %26 ]
  %46 = shl i32 %45, 16
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %27, i1 %47, i1 false
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  br i1 %28, label %50, label %56

50:                                               ; preds = %49
  %51 = icmp sgt i32 %46, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = icmp slt i32 %46, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %52, %50, %44
  %55 = phi i32 [ 3, %44 ], [ 1, %50 ], [ 2, %52 ]
  br label %56

56:                                               ; preds = %54, %52, %49, %43
  %57 = phi i32 [ %29, %43 ], [ %55, %54 ], [ 4, %52 ], [ %29, %49 ]
  %58 = getelementptr i8, ptr %0, i32 -16
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %57
  %61 = getelementptr i8, ptr %0, i32 -12
  br i1 %60, label %65, label %62

62:                                               ; preds = %56
  store i32 0, ptr %61, align 4
  %63 = getelementptr i8, ptr %0, i32 -32
  %64 = load ptr, ptr %63, align 4
  tail call void @power_supply_changed(ptr noundef %64) #11
  br label %73

65:                                               ; preds = %56
  %66 = load i32, ptr %61, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load ptr, ptr @system_wq, align 4
  %70 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %69, ptr noundef %0, i32 noundef 100) #11
  %71 = load i32, ptr %61, align 4
  %72 = add i32 %71, -1
  store i32 %72, ptr %61, align 4
  br label %73

73:                                               ; preds = %68, %65, %62, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbs_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca %union.power_supply_propval, align 4
  %5 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %8) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %248, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %1, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  store i32 %11, ptr %2, align 4
  %16 = icmp ne i32 %11, 0
  tail call fastcc void @sbs_update_presence(ptr noundef %5, i1 noundef zeroext %16)
  br label %248

17:                                               ; preds = %13
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %248, label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %11, %17 ], [ 0, %3 ]
  switch i32 %1, label %200 [
    i32 3, label %21
    i32 2, label %21
    i32 6, label %24
    i32 45, label %27
    i32 43, label %27
    i32 41, label %27
    i32 26, label %27
    i32 24, label %27
    i32 22, label %27
    i32 75, label %59
    i32 0, label %61
    i32 51, label %61
    i32 7, label %61
    i32 12, label %61
    i32 17, label %61
    i32 18, label %61
    i32 52, label %61
    i32 60, label %61
    i32 61, label %61
    i32 63, label %61
    i32 11, label %61
    i32 10, label %61
    i32 30, label %61
    i32 32, label %61
    i32 47, label %61
    i32 50, label %61
    i32 73, label %166
    i32 74, label %166
    i32 70, label %172
    i32 71, label %172
    i32 72, label %172
  ]

21:                                               ; preds = %19, %19
  %22 = tail call fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %6, i32 noundef %1, ptr noundef %2)
  %23 = icmp eq i32 %1, 3
  br i1 %23, label %248, label %202

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @sbs_get_chemistry(ptr noundef %5, ptr noundef %2)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %202, label %225

27:                                               ; preds = %19, %19, %19, %19, %19, %19
  %28 = tail call fastcc i32 @sbs_get_property_index(ptr noundef %6, i32 noundef %1)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %202, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %31) #11
  %32 = add nsw i32 %1, -22
  %33 = icmp ult i32 %32, 9
  %34 = select i1 %33, i32 0, i32 32768
  %35 = tail call fastcc i32 @sbs_set_capacity_mode(ptr noundef %6, i32 noundef %34) #11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %30
  %38 = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %28, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sbs_info, ptr %41, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %45, %37
  %46 = phi i32 [ %49, %45 ], [ %43, %37 ]
  %47 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext %39) #11
  %48 = icmp slt i32 %47, 0
  %49 = add nsw i32 %46, -1
  %50 = icmp ugt i32 %46, 1
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %45, label %52

52:                                               ; preds = %45
  br i1 %48, label %57, label %53

53:                                               ; preds = %52, %37
  %54 = phi i32 [ %47, %52 ], [ 0, %37 ]
  store i32 %54, ptr %2, align 4
  %55 = tail call fastcc i32 @sbs_set_capacity_mode(ptr noundef %6, i32 noundef %35) #11
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 0) #11
  br label %57

57:                                               ; preds = %53, %52, %30
  %58 = phi i32 [ %35, %30 ], [ %47, %52 ], [ %56, %53 ]
  tail call void @mutex_unlock(ptr noundef %31) #11
  br label %202

59:                                               ; preds = %19
  %60 = tail call fastcc i32 @sbs_get_battery_serial_number(ptr noundef %6, ptr noundef %2)
  br label %202

61:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %62 = tail call fastcc i32 @sbs_get_property_index(ptr noundef %6, i32 noundef %1)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %202, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %62, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sbs_info, ptr %66, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %72, %64
  %73 = phi i32 [ %76, %72 ], [ %70, %64 ]
  %74 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext %68) #11
  %75 = icmp slt i32 %74, 0
  %76 = add nsw i32 %73, -1
  %77 = icmp ugt i32 %73, 1
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %72, label %79

79:                                               ; preds = %72
  br i1 %75, label %202, label %80

80:                                               ; preds = %79, %64
  %81 = phi i32 [ %74, %79 ], [ 0, %64 ]
  %82 = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %62, i32 2
  %83 = and i32 %62, 268435454
  %84 = icmp eq i32 %83, 4
  %85 = shl i32 %81, 16
  %86 = ashr exact i32 %85, 16
  %87 = select i1 %84, i32 %86, i32 %81
  %88 = load i32, ptr %82, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %161, label %90

90:                                               ; preds = %80
  %91 = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %62, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = icmp sgt i32 %87, %92
  br i1 %93, label %161, label %94

94:                                               ; preds = %90
  store i32 %87, ptr %2, align 4
  switch i32 %1, label %202 [
    i32 51, label %95
    i32 0, label %108
  ]

95:                                               ; preds = %94
  %96 = and i32 %87, 128
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, ptr %2, align 4
  br label %202

99:                                               ; preds = %95
  %100 = and i32 %87, 32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 5, ptr %2, align 4
  br label %202

103:                                              ; preds = %99
  %104 = and i32 %87, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 1, ptr %2, align 4
  br label %202

107:                                              ; preds = %103
  store i32 3, ptr %2, align 4
  br label %202

108:                                              ; preds = %94
  %109 = and i32 %87, 32
  %110 = icmp eq i32 %109, 0
  %111 = and i32 %87, 64
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 1, i32 2
  %114 = select i1 %110, i32 %113, i32 4
  store i32 %114, ptr %2, align 4
  %115 = load ptr, ptr %65, align 8
  %116 = getelementptr inbounds %struct.sbs_info, ptr %115, i32 0, i32 7
  %117 = load i32, ptr %116, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %119, %108
  %120 = phi i32 [ %123, %119 ], [ %117, %108 ]
  %121 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 10) #11
  %122 = icmp slt i32 %121, 0
  %123 = add nsw i32 %120, -1
  %124 = icmp ugt i32 %120, 1
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %119, label %126

126:                                              ; preds = %119
  br i1 %122, label %144, label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %2, align 4
  %129 = shl i32 %121, 16
  br label %130

130:                                              ; preds = %127, %108
  %131 = phi i32 [ %128, %127 ], [ %114, %108 ]
  %132 = phi i32 [ %129, %127 ], [ 0, %108 ]
  %133 = icmp ne i32 %131, 4
  %134 = icmp eq i32 %132, 0
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = icmp eq i32 %131, 4
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = icmp sgt i32 %132, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %138
  %141 = icmp slt i32 %132, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %140, %138, %130
  %143 = phi i32 [ 3, %130 ], [ 1, %138 ], [ 2, %140 ]
  store i32 %143, ptr %2, align 4
  br label %144

144:                                              ; preds = %142, %140, %136, %126
  %145 = getelementptr inbounds %struct.sbs_info, ptr %66, i32 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, ptr %2, align 4
  %150 = getelementptr inbounds %struct.sbs_info, ptr %66, i32 0, i32 5
  store i32 %149, ptr %150, align 4
  br label %202

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.sbs_info, ptr %66, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr %2, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %202, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.sbs_info, ptr %66, i32 0, i32 9
  %158 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %157) #11
  %159 = getelementptr inbounds %struct.sbs_info, ptr %66, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  tail call void @power_supply_changed(ptr noundef %160) #11
  store i32 0, ptr %145, align 4
  br label %202

161:                                              ; preds = %90, %80
  switch i32 %1, label %165 [
    i32 0, label %162
    i32 47, label %163
  ]

162:                                              ; preds = %161
  store i32 0, ptr %2, align 4
  br label %202

163:                                              ; preds = %161
  %164 = tail call i32 @llvm.smin.i32(i32 %87, i32 100) #11
  store i32 %164, ptr %2, align 4
  br label %202

165:                                              ; preds = %161
  store i32 0, ptr %2, align 4
  br label %202

166:                                              ; preds = %19, %19
  %167 = tail call fastcc ptr @sbs_get_constant_string(ptr noundef %5, i32 noundef %1)
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = ptrtoint ptr %167 to i32
  br label %202

171:                                              ; preds = %166
  store ptr %167, ptr %2, align 4
  br label %202

172:                                              ; preds = %19, %19, %19
  %173 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.sbs_info, ptr %174, i32 0, i32 7
  %176 = load i32, ptr %175, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %178, %172
  %179 = phi i32 [ %182, %178 ], [ %176, %172 ]
  %180 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 27) #11
  %181 = icmp slt i32 %180, 0
  %182 = add nsw i32 %179, -1
  %183 = icmp ugt i32 %179, 1
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %178, label %185

185:                                              ; preds = %178
  br i1 %181, label %202, label %186

186:                                              ; preds = %185, %172
  %187 = phi i32 [ %180, %185 ], [ 0, %172 ]
  switch i32 %1, label %202 [
    i32 70, label %188
    i32 71, label %193
    i32 72, label %196
  ]

188:                                              ; preds = %186
  %189 = trunc i32 %187 to i16
  %190 = lshr i16 %189, 9
  %191 = add nuw nsw i16 %190, 1980
  %192 = zext i16 %191 to i32
  br label %198

193:                                              ; preds = %186
  %194 = lshr i32 %187, 5
  %195 = and i32 %194, 15
  br label %198

196:                                              ; preds = %186
  %197 = and i32 %187, 31
  br label %198

198:                                              ; preds = %196, %193, %188
  %199 = phi i32 [ %192, %188 ], [ %195, %193 ], [ %197, %196 ]
  store i32 %199, ptr %2, align 4
  br label %202

200:                                              ; preds = %19
  %201 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.sbs_get_property) #12
  br label %248

202:                                              ; preds = %198, %186, %185, %171, %169, %165, %163, %162, %156, %151, %148, %107, %106, %102, %98, %94, %79, %61, %59, %57, %27, %24, %21
  %203 = phi i32 [ %170, %169 ], [ %20, %171 ], [ %62, %61 ], [ %60, %59 ], [ %28, %27 ], [ %58, %57 ], [ %25, %24 ], [ %22, %21 ], [ %74, %79 ], [ 0, %102 ], [ 0, %107 ], [ 0, %106 ], [ 0, %98 ], [ 0, %94 ], [ 0, %162 ], [ 0, %165 ], [ 0, %163 ], [ 0, %148 ], [ 0, %156 ], [ 0, %151 ], [ %180, %185 ], [ -22, %186 ], [ 0, %198 ]
  %204 = load ptr, ptr %7, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %225

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 2
  %208 = load i8, ptr %207, align 4, !range !8
  %209 = zext i8 %208 to i32
  %210 = xor i32 %203, -1
  %211 = lshr i32 %210, 31
  %212 = icmp eq i32 %211, %209
  br i1 %212, label %225, label %213

213:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %214 = call fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %6, i32 noundef 3, ptr noundef nonnull %4)
  %215 = icmp eq i32 %214, 0
  %216 = load i32, ptr %4, align 4
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %215, i1 %217, i1 false
  tail call fastcc void @sbs_update_presence(ptr noundef %5, i1 noundef zeroext %218)
  %219 = load i8, ptr %207, align 4, !range !8
  %220 = icmp eq i8 %208, %219
  br i1 %220, label %224, label %221

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 1
  %223 = load ptr, ptr %222, align 4
  tail call void @power_supply_changed(ptr noundef %223) #11
  br label %224

224:                                              ; preds = %221, %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %225

225:                                              ; preds = %224, %206, %202, %24
  %226 = phi i32 [ %203, %202 ], [ %203, %224 ], [ %203, %206 ], [ %25, %24 ]
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %225
  switch i32 %1, label %248 [
    i32 45, label %229
    i32 43, label %229
    i32 41, label %229
    i32 12, label %232
    i32 11, label %232
    i32 10, label %232
    i32 17, label %232
    i32 18, label %232
    i32 26, label %232
    i32 30, label %232
    i32 32, label %232
    i32 24, label %232
    i32 22, label %232
    i32 52, label %235
    i32 60, label %238
    i32 61, label %238
    i32 63, label %238
  ]

229:                                              ; preds = %228, %228, %228
  %230 = load i32, ptr %2, align 4
  %231 = mul i32 %230, 10000
  br label %241

232:                                              ; preds = %228, %228, %228, %228, %228, %228, %228, %228, %228, %228
  %233 = load i32, ptr %2, align 4
  %234 = mul i32 %233, 1000
  br label %241

235:                                              ; preds = %228
  %236 = load i32, ptr %2, align 4
  %237 = add i32 %236, -2731
  br label %241

238:                                              ; preds = %228, %228, %228
  %239 = load i32, ptr %2, align 4
  %240 = mul i32 %239, 60
  br label %241

241:                                              ; preds = %238, %235, %232, %229
  %242 = phi i32 [ %240, %238 ], [ %237, %235 ], [ %234, %232 ], [ %231, %229 ]
  store i32 %242, ptr %2, align 4
  br label %248

243:                                              ; preds = %225
  %244 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 2
  %245 = load i8, ptr %244, align 4, !range !8
  %246 = icmp eq i8 %245, 0
  %247 = select i1 %246, i32 -61, i32 %226
  br label %248

248:                                              ; preds = %243, %241, %228, %200, %21, %17, %15, %10
  %249 = phi i32 [ 0, %15 ], [ -22, %200 ], [ %11, %10 ], [ -61, %17 ], [ 0, %21 ], [ %247, %243 ], [ 0, %228 ], [ 0, %241 ]
  ret i32 %249
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbs_external_power_changed(ptr noundef %0) #2 {
  %2 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.sbs_info, ptr %2, i32 0, i32 9
  %4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %3) #11
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %3, i32 noundef 100) #11
  %7 = getelementptr inbounds %struct.sbs_info, ptr %2, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sbs_info, ptr %2, i32 0, i32 6
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sbs_update_presence(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.sbs_info, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = zext i1 %1 to i8
  %7 = icmp eq i8 %5, %6
  br i1 %7, label %100, label %8

8:                                                ; preds = %2
  br i1 %1, label %9, label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.sbs_info, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %20, label %36

13:                                               ; preds = %8
  store i8 0, ptr %4, align 4
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, -5
  store i16 %15, ptr %3, align 8
  %16 = getelementptr inbounds %struct.sbs_info, ptr %0, i32 0, i32 12
  store i32 -1, ptr %16, align 4
  %17 = getelementptr %struct.sbs_info, ptr %0, i32 0, i32 13, i32 0
  store i8 0, ptr %17, align 1
  %18 = getelementptr %struct.sbs_info, ptr %0, i32 0, i32 13, i32 1
  store i8 0, ptr %18, align 1
  %19 = getelementptr %struct.sbs_info, ptr %0, i32 0, i32 13, i32 2
  store i8 0, ptr %19, align 1
  br label %100

20:                                               ; preds = %24, %9
  %21 = phi i32 [ %25, %24 ], [ %11, %9 ]
  %22 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 26) #11
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  tail call void @msleep(i32 noundef 100) #11
  %25 = add nsw i32 %21, -1
  %26 = icmp sgt i32 %21, 1
  br i1 %26, label %20, label %27

27:                                               ; preds = %24
  %28 = load i16, ptr %3, align 8
  %29 = and i16 %28, -5
  store i16 %29, ptr %3, align 8
  store i8 1, ptr %4, align 4
  br label %100

30:                                               ; preds = %20
  %31 = and i32 %22, 240
  %32 = icmp eq i32 %31, 48
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i16, ptr %3, align 8
  %35 = or i16 %34, 4
  br label %39

36:                                               ; preds = %30, %9
  %37 = load i16, ptr %3, align 8
  %38 = and i16 %37, -5
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i16 [ %38, %36 ], [ %35, %33 ]
  store i16 %40, ptr %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 @of_device_is_compatible(ptr noundef %45, ptr noundef nonnull @.str.14) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load i16, ptr %3, align 8
  %50 = and i16 %49, 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.15) #12
  %53 = load i16, ptr %3, align 8
  %54 = and i16 %53, -5
  store i16 %54, ptr %3, align 8
  br label %55

55:                                               ; preds = %52, %48, %39
  %56 = load i8, ptr %4, align 4, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.sbs_info, ptr %0, i32 0, i32 4
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4, i32 8
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sbs_info, ptr %65, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %69, %62
  %70 = phi i32 [ %73, %69 ], [ %67, %62 ]
  %71 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %63, i8 noundef zeroext 3) #11
  %72 = icmp slt i32 %71, 0
  %73 = add nsw i32 %70, -1
  %74 = icmp ugt i32 %70, 1
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %69, label %76

76:                                               ; preds = %69
  br i1 %72, label %95, label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4, i32 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.sbs_info, ptr %80, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = trunc i32 %71 to i16
  %84 = or i16 %83, 16384
  %85 = icmp sgt i32 %82, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %86, %77
  %87 = phi i32 [ %90, %86 ], [ %82, %77 ]
  %88 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %78, i8 noundef zeroext 3, i16 noundef zeroext %84) #11
  %89 = icmp slt i32 %88, 0
  %90 = add nsw i32 %87, -1
  %91 = icmp ugt i32 %87, 1
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %86, label %93

93:                                               ; preds = %86
  %94 = tail call i32 @llvm.smin.i32(i32 %88, i32 0) #11
  br i1 %89, label %95, label %99

95:                                               ; preds = %93, %76
  %96 = phi i32 [ %94, %93 ], [ %71, %76 ]
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.16, i32 noundef %96) #12
  br label %99

99:                                               ; preds = %95, %93, %77, %62, %58, %55
  store i8 1, ptr %4, align 4
  br label %100

100:                                              ; preds = %99, %27, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_chemistry(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sbs_info, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i32 %4, ptr %1, align 4
  br label %34

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @sbs_get_constant_string(ptr noundef %0, i32 noundef 6)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %34

12:                                               ; preds = %7
  %13 = tail call i32 @strncasecmp(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef 4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 2, ptr %3, align 4
  br label %32

16:                                               ; preds = %12
  %17 = tail call i32 @strncasecmp(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 3, ptr %3, align 4
  br label %32

20:                                               ; preds = %16
  %21 = tail call i32 @strncasecmp(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef 4)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 5, ptr %3, align 4
  br label %32

24:                                               ; preds = %20
  %25 = tail call i32 @strncasecmp(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef 4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, ptr %3, align 4
  br label %32

28:                                               ; preds = %24
  store i32 0, ptr %3, align 4
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.21, ptr noundef %8) #12
  %31 = load i32, ptr %3, align 4
  br label %32

32:                                               ; preds = %28, %27, %23, %19, %15
  %33 = phi i32 [ 2, %15 ], [ 5, %23 ], [ 1, %27 ], [ 3, %19 ], [ %31, %28 ]
  store i32 %33, ptr %1, align 4
  br label %34

34:                                               ; preds = %32, %10, %6
  %35 = phi i32 [ 0, %6 ], [ %11, %10 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_property_index(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %3 [
    i32 3, label %32
    i32 -1, label %5
    i32 52, label %6
    i32 12, label %7
    i32 17, label %8
    i32 18, label %9
    i32 50, label %10
    i32 47, label %11
    i32 60, label %12
    i32 61, label %13
    i32 63, label %14
    i32 0, label %15
    i32 51, label %16
    i32 7, label %17
    i32 75, label %18
    i32 45, label %19
    i32 26, label %20
    i32 43, label %21
    i32 24, label %22
    i32 41, label %23
    i32 22, label %24
    i32 11, label %25
    i32 10, label %26
    i32 6, label %27
    i32 74, label %28
    i32 73, label %29
    i32 30, label %30
    i32 32, label %31
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sbs_get_property_index, i32 noundef %1) #12
  br label %32

5:                                                ; preds = %2
  br label %32

6:                                                ; preds = %2
  br label %32

7:                                                ; preds = %2
  br label %32

8:                                                ; preds = %2
  br label %32

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  br label %32

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  br label %32

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  br label %32

18:                                               ; preds = %2
  br label %32

19:                                               ; preds = %2
  br label %32

20:                                               ; preds = %2
  br label %32

21:                                               ; preds = %2
  br label %32

22:                                               ; preds = %2
  br label %32

23:                                               ; preds = %2
  br label %32

24:                                               ; preds = %2
  br label %32

25:                                               ; preds = %2
  br label %32

26:                                               ; preds = %2
  br label %32

27:                                               ; preds = %2
  br label %32

28:                                               ; preds = %2
  br label %32

29:                                               ; preds = %2
  br label %32

30:                                               ; preds = %2
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %3, %2
  %33 = phi i32 [ -22, %3 ], [ 0, %2 ], [ 1, %5 ], [ 2, %6 ], [ 3, %7 ], [ 4, %8 ], [ 5, %9 ], [ 6, %10 ], [ 7, %11 ], [ 8, %12 ], [ 9, %13 ], [ 10, %14 ], [ 11, %15 ], [ 12, %16 ], [ 13, %17 ], [ 14, %18 ], [ 15, %19 ], [ 16, %20 ], [ 17, %21 ], [ 18, %22 ], [ 19, %23 ], [ 20, %24 ], [ 21, %25 ], [ 22, %26 ], [ 23, %27 ], [ 24, %28 ], [ 25, %29 ], [ 26, %30 ], [ 27, %31 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_battery_serial_number(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sbs_info, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %12, %8 ], [ %6, %2 ]
  %10 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 28) #11
  %11 = icmp slt i32 %10, 0
  %12 = add nsw i32 %9, -1
  %13 = icmp ugt i32 %9, 1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %8, label %15

15:                                               ; preds = %8
  br i1 %11, label %19, label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ %10, %15 ], [ 0, %2 ]
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @sbs_serial, ptr noundef nonnull @.str.23, i32 noundef %17)
  store ptr @sbs_serial, ptr %1, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 0, %16 ], [ %10, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sbs_get_constant_string(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [33 x i8], align 1
  switch i32 %1, label %106 [
    i32 6, label %6
    i32 74, label %4
    i32 73, label %5
  ]

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4, %2
  %7 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 2, %5 ]
  %8 = getelementptr %struct.sbs_info, ptr %0, i32 0, i32 13, i32 %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %106, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %106

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  %15 = tail call fastcc i32 @sbs_get_property_index(ptr noundef %14, i32 noundef %1)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = inttoptr i32 %15 to ptr
  br label %106

19:                                               ; preds = %13
  %20 = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %15, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sbs_info, ptr %24, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.i2c_algorithm, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %28) #11
  %34 = and i32 %33, 16777216
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %19
  %37 = icmp sgt i32 %26, 0
  br i1 %37, label %94, label %98

38:                                               ; preds = %19
  %39 = load i16, ptr %22, align 8
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  %42 = and i16 %39, -5
  store i16 %42, ptr %22, align 8
  %43 = load ptr, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %3, i8 0, i32 33, i1 false) #11, !annotation !9
  %44 = getelementptr inbounds %struct.sbs_info, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = load i1, ptr @sbs_read_string_data_fallback.__print_once, align 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  store i1 true, ptr @sbs_read_string_data_fallback.__print_once, align 1
  %48 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.24) #12
  br label %49

49:                                               ; preds = %47, %38
  %50 = load ptr, ptr %27, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.i2c_algorithm, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %50) #11
  %56 = and i32 %55, 202899456
  %57 = icmp eq i32 %56, 202899456
  br i1 %57, label %58, label %86

58:                                               ; preds = %49
  %59 = icmp sgt i32 %45, 0
  br i1 %59, label %63, label %81

60:                                               ; preds = %63
  %61 = add nsw i32 %64, -1
  %62 = icmp sgt i32 %64, 1
  br i1 %62, label %63, label %86

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %61, %60 ], [ %45, %58 ]
  %65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext %21) #11
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %60

67:                                               ; preds = %63
  %68 = icmp ugt i32 %65, 32
  br i1 %68, label %72, label %69

69:                                               ; preds = %67
  %70 = trunc i32 %65 to i8
  %71 = add nuw nsw i8 %70, 1
  br label %77

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.sbs_read_string_data_fallback, i32 noundef 32) #12
  br label %86

74:                                               ; preds = %77
  %75 = add nsw i32 %78, -1
  %76 = icmp sgt i32 %78, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %74, %69
  %78 = phi i32 [ %45, %69 ], [ %75, %74 ]
  %79 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %22, i8 noundef zeroext %21, i8 noundef zeroext %71, ptr noundef nonnull %3) #11
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %74

81:                                               ; preds = %77, %58
  %82 = phi i32 [ 0, %58 ], [ %65, %77 ]
  %83 = phi i32 [ 0, %58 ], [ %79, %77 ]
  %84 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %84, i32 %82, i1 false) #11
  %85 = getelementptr i8, ptr %8, i32 %82
  store i8 0, ptr %85, align 1
  br label %86

86:                                               ; preds = %81, %74, %72, %60, %49
  %87 = phi i32 [ -22, %72 ], [ %83, %81 ], [ -19, %49 ], [ %79, %74 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #11
  br i1 %41, label %101, label %88

88:                                               ; preds = %86
  %89 = load i16, ptr %22, align 8
  %90 = or i16 %89, 4
  store i16 %90, ptr %22, align 8
  br label %101

91:                                               ; preds = %94
  %92 = add nsw i32 %95, -1
  %93 = icmp sgt i32 %95, 1
  br i1 %93, label %94, label %103

94:                                               ; preds = %91, %36
  %95 = phi i32 [ %92, %91 ], [ %26, %36 ]
  %96 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %22, i8 noundef zeroext %21, ptr noundef %8) #11
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %91

98:                                               ; preds = %94, %36
  %99 = phi i32 [ 0, %36 ], [ %96, %94 ]
  %100 = getelementptr i8, ptr %8, i32 %99
  store i8 0, ptr %100, align 1
  br label %106

101:                                              ; preds = %88, %86
  %102 = icmp slt i32 %87, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101, %91
  %104 = phi i32 [ %87, %101 ], [ %96, %91 ]
  %105 = inttoptr i32 %104 to ptr
  br label %106

106:                                              ; preds = %103, %101, %98, %17, %10, %6, %2
  %107 = phi ptr [ %18, %17 ], [ %105, %103 ], [ %8, %6 ], [ %8, %101 ], [ %8, %10 ], [ %8, %98 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %107
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbs_set_capacity_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sbs_info, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %12, %8 ], [ %6, %2 ]
  %10 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 3) #11
  %11 = icmp slt i32 %10, 0
  %12 = add nsw i32 %9, -1
  %13 = icmp ugt i32 %9, 1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %8, label %15

15:                                               ; preds = %8
  br i1 %11, label %41, label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ %10, %15 ], [ 0, %2 ]
  %18 = and i32 %17, 32768
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %1, 0
  %22 = and i32 %17, 32767
  %23 = select i1 %21, i32 0, i32 32768
  %24 = or i32 %22, %23
  %25 = trunc i32 %24 to i16
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.sbs_info, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %30, %20
  %31 = phi i32 [ %34, %30 ], [ %28, %20 ]
  %32 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext 3, i16 noundef zeroext %25) #11
  %33 = icmp slt i32 %32, 0
  %34 = add nsw i32 %31, -1
  %35 = icmp ugt i32 %31, 1
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %30, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @llvm.smin.i32(i32 %32, i32 0) #11
  %39 = icmp slt i32 %32, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %41

41:                                               ; preds = %40, %37, %16, %15
  %42 = phi i32 [ %18, %40 ], [ %10, %15 ], [ %1, %16 ], [ %38, %37 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sbs_bat_needs_calibration(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sbs_info, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %11, %7 ], [ %5, %1 ]
  %9 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext 3) #11
  %10 = icmp slt i32 %9, 0
  %11 = add nsw i32 %8, -1
  %12 = icmp ugt i32 %8, 1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %7, label %14

14:                                               ; preds = %7
  %15 = and i32 %9, -2147483520
  %16 = icmp eq i32 %15, 128
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi i1 [ false, %1 ], [ %16, %14 ]
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %0) #9 {
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbs_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sbs_info, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sbs_info, ptr %4, i32 0, i32 9
  %10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %9) #11
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.sbs_info, ptr %4, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.sbs_info, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %25, %21 ], [ %19, %16 ]
  %23 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %2, i8 noundef zeroext 0, i16 noundef zeroext 17) #11
  %24 = icmp slt i32 %23, 0
  %25 = add nsw i32 %22, -1
  %26 = icmp ugt i32 %22, 1
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %21, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #11
  %30 = getelementptr inbounds %struct.sbs_info, ptr %4, i32 0, i32 2
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp ne i8 %31, 0
  %33 = icmp slt i32 %23, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %16, %11
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi i32 [ 0, %35 ], [ %29, %28 ]
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
