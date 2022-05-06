; ModuleID = '/llk/IR/drivers/mfd/cros_ec_dev.c_pt.bc'
source_filename = "../drivers/mfd/cros_ec_dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cros_feature_to_name = type { i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_platform = type { ptr, i16 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }

@cros_ec_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"cros-ec-dev\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author166 = internal constant [47 x i8] c"author=Bill Richardson <wfrichar@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [69 x i8] c"description=Userspace interface to the Chrome OS Embedded Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_version168 = internal constant [12 x i8] c"version=1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cros_ec_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@cros_class = internal global %struct.class { ptr @.str.2, ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [44 x i8] c"\013cros_ec: failed to register device class\0A\00", align 1
@cros_ec_dev_driver = internal global %struct.platform_driver { ptr @ec_device_probe, ptr @ec_device_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cros_ec_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [38 x i8] c"\014cros_ec: can't register driver: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"chromeos\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cros-ec-dev\00", align 1
@cros_mcu_devices = internal unnamed_addr constant [4 x %struct.cros_feature_to_name] [%struct.cros_feature_to_name { i32 28, ptr @.str.14, ptr @.str.15 }, %struct.cros_feature_to_name { i32 40, ptr @.str.16, ptr @.str.17 }, %struct.cros_feature_to_name { i32 39, ptr @.str.18, ptr @.str.19 }, %struct.cros_feature_to_name { i32 29, ptr @.str.20, ptr @.str.21 }], align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"CrOS %s MCU detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dev_set_name failed => %d\0A\00", align 1
@cros_ec_sensorhub_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to add %s subdevice: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@cros_ec_lightbar_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to add lightbar: %d\0A\00", align 1
@cros_usbpd_notify_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"failed to add PD notify devices: %d\0A\00", align 1
@cros_ec_platform_cells = internal constant [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.31, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"failed to add cros-ec platform devices: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"google,has-vbc-nvram\00", align 1
@cros_ec_vbc_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to add VBC devices: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"cros_fp\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Fingerprint\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"cros_ish\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Integrated Sensor Hub\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"cros_scp\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"System Control Processor\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"cros_tp\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"cros-ec-sensorhub\00", align 1
@cros_ec_cec_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@cros_ec_rtc_cells = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@cros_usbpd_charger_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"cros-ec-cec\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"cros-ec-rtc\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"cros-usbpd-charger\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"cros-usbpd-logger\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"cros-ec-lightbar\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"cros-usbpd-notify\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"cros-ec-chardev\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"cros-ec-debugfs\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"cros-ec-sysfs\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"cros-ec-pchg\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"cros-ec-vbc\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license169, ptr @__UNIQUE_ID_version168], section "llvm.metadata"

@__mod_platform__cros_ec_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @cros_ec_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @cros_class, ptr noundef nonnull @cros_ec_dev_init.__key) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %10

5:                                                ; preds = %0
  %6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_dev_driver, ptr noundef nonnull @__this_module) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %6) #6
  tail call void @class_unregister(ptr noundef nonnull @cros_class) #5
  br label %10

10:                                               ; preds = %8, %5, %3
  %11 = phi i32 [ %1, %3 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_dev_driver) #5
  tail call void @class_unregister(ptr noundef nonnull @cros_class) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec_device_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 496) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %125, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cros_ec_platform, ptr %4, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 5
  store i16 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 6
  store i32 -1, ptr %19, align 8
  %20 = getelementptr %struct.cros_ec_dev, ptr %6, i32 0, i32 6, i32 0, i32 1
  store i32 -1, ptr %20, align 4
  tail call void @device_initialize(ptr noundef nonnull %6) #5
  %21 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 28) #5
  br i1 %21, label %22, label %28

22:                                               ; preds = %32, %30, %28, %8
  %23 = phi i32 [ 0, %8 ], [ 1, %28 ], [ 2, %30 ], [ 3, %32 ]
  %24 = getelementptr [4 x %struct.cros_feature_to_name], ptr @cros_mcu_devices, i32 0, i32 %23, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %25) #6
  %26 = getelementptr [4 x %struct.cros_feature_to_name], ptr @cros_mcu_devices, i32 0, i32 %23, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %4, align 4
  br label %34

28:                                               ; preds = %8
  %29 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 40) #5
  br i1 %29, label %22, label %30

30:                                               ; preds = %28
  %31 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 39) #5
  br i1 %31, label %22, label %32

32:                                               ; preds = %30
  %33 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 29) #5
  br i1 %33, label %22, label %34

34:                                               ; preds = %32, %22
  %35 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  store ptr @cros_class, ptr %35, align 4
  %36 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  store ptr %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 33
  store ptr @cros_ec_class_release, ptr %37, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, ptr noundef %38) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %39) #6
  br label %123

42:                                               ; preds = %34
  %43 = tail call i32 @device_add(ptr noundef nonnull %6) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %123

45:                                               ; preds = %42
  %46 = tail call i32 @cros_ec_get_sensor_count(ptr noundef nonnull %6) #5
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %15, align 4
  %50 = tail call i32 @mfd_add_devices(ptr noundef %49, i32 noundef -2, ptr noundef nonnull @cros_ec_sensorhub_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22, i32 noundef %50) #6
  br label %54

54:                                               ; preds = %52, %48, %45
  %55 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 35) #5
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = load ptr, ptr %15, align 4
  %58 = tail call i32 @mfd_add_devices(ptr noundef %57, i32 noundef -2, ptr noundef nonnull @cros_ec_cec_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, i32 noundef %58) #6
  br label %62

62:                                               ; preds = %60, %56, %54
  %63 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 27) #5
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = load ptr, ptr %15, align 4
  %66 = tail call i32 @mfd_add_devices(ptr noundef %65, i32 noundef -2, ptr noundef nonnull @cros_ec_rtc_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24, i32 noundef %66) #6
  br label %70

70:                                               ; preds = %68, %64, %62
  %71 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 22) #5
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = load ptr, ptr %15, align 4
  %74 = tail call i32 @mfd_add_devices(ptr noundef %73, i32 noundef -2, ptr noundef nonnull @cros_usbpd_charger_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.25, i32 noundef %74) #6
  br label %78

78:                                               ; preds = %76, %72, %70
  %79 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 4) #5
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  %81 = tail call zeroext i1 @dmi_match(i32 noundef 7, ptr noundef nonnull @.str.8) #5
  br i1 %81, label %82, label %88

82:                                               ; preds = %80, %78
  %83 = load ptr, ptr %15, align 4
  %84 = tail call i32 @mfd_add_devices(ptr noundef %83, i32 noundef -2, ptr noundef nonnull @cros_ec_lightbar_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.9, i32 noundef %84) #6
  br label %88

88:                                               ; preds = %86, %82, %80
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds %struct.cros_ec_device, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 25
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %6, i32 noundef 22) #5
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = load ptr, ptr %15, align 4
  %99 = tail call i32 @mfd_add_devices(ptr noundef %98, i32 noundef -2, ptr noundef nonnull @cros_usbpd_notify_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.10, i32 noundef %99) #6
  br label %103

103:                                              ; preds = %101, %97, %95, %88
  %104 = load ptr, ptr %15, align 4
  %105 = tail call i32 @mfd_add_devices(ptr noundef %104, i32 noundef -2, ptr noundef nonnull @cros_ec_platform_cells, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.11, i32 noundef %105) #6
  br label %109

109:                                              ; preds = %107, %103
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds %struct.cros_ec_device, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 25
  %114 = load ptr, ptr %113, align 8
  %115 = tail call ptr @of_find_property(ptr noundef %114, ptr noundef nonnull @.str.12, ptr noundef null) #5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load ptr, ptr %15, align 4
  %119 = tail call i32 @mfd_add_devices(ptr noundef %118, i32 noundef -2, ptr noundef nonnull @cros_ec_vbc_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %122, ptr noundef nonnull @.str.13, i32 noundef %119) #6
  br label %125

123:                                              ; preds = %42, %41
  %124 = phi i32 [ %39, %41 ], [ %43, %42 ]
  tail call void @put_device(ptr noundef nonnull %6) #5
  br label %125

125:                                              ; preds = %123, %121, %117, %109, %1
  %126 = phi i32 [ %124, %123 ], [ -12, %1 ], [ 0, %117 ], [ 0, %121 ], [ 0, %109 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec_device_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @mfd_remove_devices(ptr noundef %5) #5
  tail call void @device_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cros_ec_class_release(ptr noundef %0) #3 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_sensor_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmi_match(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
