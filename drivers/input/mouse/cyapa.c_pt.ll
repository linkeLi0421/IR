; ModuleID = '/llk/IR/drivers/input/mouse/cyapa.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cyapa_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cyapa = type { i32, [3 x i8], i8, ptr, ptr, ptr, [32 x i8], i8, i8, i8, i16, i8, i16, i8, i16, %struct.gen6_interval_setting, [16 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, %struct.mutex, ptr, %union.cyapa_cmd_states }
%struct.gen6_interval_setting = type { i16, i16, i16 }
%union.cyapa_cmd_states = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { %struct.mutex, %struct.completion, %struct.atomic_t, i8, i8, ptr, ptr, ptr, i32, %struct.mutex, [256 x i8], [256 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@product_id = dso_local local_unnamed_addr constant [6 x i8] c"CYTRA\00", align 1
@cyapa_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cyapa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@cyapa_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,cyapa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description256 = internal constant [44 x i8] c"description=Cypress APA I2C Trackpad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [36 x i8] c"author=Dudley Du <dudl@cypress.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cyapa_gen3_ops = external dso_local constant %struct.cyapa_dev_ops, align 4
@cyapa_gen5_ops = external dso_local constant %struct.cyapa_dev_ops, align 4
@__this_module = external dso_local global %struct.module, align 64
@cyapa_driver = internal global %struct.i2c_driver { i32 0, ptr @cyapa_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cyapa_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyapa_pm_ops, ptr null, ptr null }, ptr @cyapa_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"cyapa\00", align 1
@cyapa_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cyapa_suspend, ptr @cyapa_resume, ptr @cyapa_suspend, ptr @cyapa_resume, ptr @cyapa_suspend, ptr @cyapa_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyapa_runtime_suspend, ptr @cyapa_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"not a supported I2C/SMBus adapter\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"i2c-%d-%04x/input0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to get vcc regulator: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to add disable regulator action: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"failed to detect and initialize tp device.\0A\00", align 1
@cyapa_sysfs_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cyapa_sysfs_entries, ptr null }, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to create sysfs entries: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"failed to prepare wakeup controls: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"failed to start pm_runtime: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to request threaded irq: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"create input_dev instance failed: %d\0A\00", align 1
@cyapa_initialize.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"&cyapa->state_sync_lock\00", align 1
@cyapa_gen6_ops = external dso_local constant %struct.cyapa_dev_ops, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"device detected but not operational\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"no device detected: %d\0A\00", align 1
@cyapa_sysfs_entries = internal global [7 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_product_id, ptr @dev_attr_update_fw, ptr @dev_attr_baseline, ptr @dev_attr_calibrate, ptr @dev_attr_mode, ptr null], align 4
@dev_attr_firmware_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @cyapa_show_fm_ver, ptr null }, align 4
@dev_attr_product_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @cyapa_show_product_id, ptr null }, align 4
@dev_attr_update_fw = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 128 }, ptr null, ptr @cyapa_update_fw_store }, align 4
@dev_attr_baseline = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @cyapa_show_baseline, ptr null }, align 4
@dev_attr_calibrate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128 }, ptr null, ptr @cyapa_calibrate_store }, align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @cyapa_show_mode, ptr null }, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"firmware_version\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"product_id\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"update_fw\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"File name too long\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"failed to re-detect after updated: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Could not load firmware from %s: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Invalid CYAPA firmware image: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"bl_enter failed, %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"bl_activate failed, %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"bl_initiate failed, %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"update_fw failed, %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"calibrate\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"gen%d %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"bootloader busy\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"bootloader idle\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"bootloader active\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"bootloader\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"operational\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@cyapa_power_wakeup_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @cyapa_power_wakeup_entries, ptr null }, align 4
@.str.40 = private unnamed_addr constant [38 x i8] c"failed to add power wakeup group: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"failed to add power cleanup action: %d\0A\00", align 1
@power_group_name = external dso_local constant [0 x i8], align 1
@cyapa_power_wakeup_entries = internal global [2 x ptr] [ptr @dev_attr_suspend_scanrate_ms, ptr null], align 4
@dev_attr_suspend_scanrate_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420 }, ptr @cyapa_show_suspend_scanrate, ptr @cyapa_update_suspend_scanrate }, align 4
@.str.42 = private unnamed_addr constant [20 x i8] c"suspend_scanrate_ms\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"buttononly\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@cyapa_power_runtime_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @cyapa_power_runtime_entries, ptr null }, align 4
@.str.46 = private unnamed_addr constant [42 x i8] c"failed to create power runtime group: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"failed to add power runtime cleanup action: %d\0A\00", align 1
@cyapa_power_runtime_entries = internal global [2 x ptr] [ptr @dev_attr_runtime_suspend_scanrate_ms, ptr null], align 4
@dev_attr_runtime_suspend_scanrate_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420 }, ptr @cyapa_show_rt_suspend_scanrate, ptr @cyapa_update_rt_suspend_scanrate }, align 4
@.str.48 = private unnamed_addr constant [28 x i8] c"runtime_suspend_scanrate_ms\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"invalid runtime suspend scanrate ms parameter\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"failed to allocate memory for input device.\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Cypress APA Trackpad (cyapa)\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"set active power failed: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"suspend set power mode failed: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"failed to reinitialize TP device: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"runtime suspend failed: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"runtime resume failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_license258], section "llvm.metadata"
@switch.table.cyapa_show_mode = private unnamed_addr constant [8 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38], align 4

@__mod_i2c__cyapa_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @cyapa_id_table
@__mod_of__cyapa_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cyapa_of_match

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_is_pip_bl_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %3 = load i8, ptr %2, align 4
  switch i8 %3, label %10 [
    i8 6, label %4
    i8 5, label %7
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %11, label %10

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %4, %1
  br label %11

11:                                               ; preds = %10, %7, %4
  %12 = phi i1 [ false, %10 ], [ true, %4 ], [ true, %7 ]
  ret i1 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_is_pip_app_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %3 = load i8, ptr %2, align 4
  switch i8 %3, label %10 [
    i8 6, label %4
    i8 5, label %7
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %11, label %10

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %4, %1
  br label %11

11:                                               ; preds = %10, %7, %4
  %12 = phi i1 [ false, %10 ], [ true, %4 ], [ true, %7 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cyapa_poll_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [32 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = udiv i32 %1, 100
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %12 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  %14 = getelementptr %struct.cyapa, ptr %0, i32 0, i32 1, i32 2
  %15 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %16 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 9), align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 9), align 4
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  br label %25

25:                                               ; preds = %137, %2
  %26 = phi i32 [ %7, %2 ], [ %139, %137 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false) #12, !annotation !8
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  store i32 0, ptr %0, align 4
  %32 = call i32 @cyapa_i2c_reg_read_block(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 3, ptr noundef nonnull %6) #12
  %33 = load i8, ptr %9, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  switch i32 %32, label %39 [
    i32 -6, label %36
    i32 -110, label %36
  ]

36:                                               ; preds = %35, %35
  br i1 %31, label %135, label %37

37:                                               ; preds = %36
  %38 = call i32 @cyapa_read_block(ptr noundef %0, i8 noundef zeroext 6, ptr noundef nonnull %6) #12
  br label %39

39:                                               ; preds = %37, %35, %25
  %40 = phi i1 [ false, %35 ], [ false, %25 ], [ true, %37 ]
  %41 = phi i32 [ %32, %35 ], [ %32, %25 ], [ %38, %37 ]
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %128

43:                                               ; preds = %39
  %44 = xor i1 %31, true
  %45 = select i1 %40, i1 true, i1 %44
  %46 = load i8, ptr %6, align 1
  store i8 %46, ptr %10, align 4
  %47 = load i8, ptr %11, align 1
  store i8 %47, ptr %12, align 1
  %48 = load i8, ptr %13, align 1
  store i8 %48, ptr %14, align 2
  %49 = load i8, ptr %15, align 4
  switch i8 %49, label %55 [
    i8 0, label %50
    i8 3, label %50
  ]

50:                                               ; preds = %43, %43
  %51 = call i32 %16(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %125, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr %15, align 4
  br label %55

55:                                               ; preds = %53, %43
  %56 = phi i8 [ %54, %53 ], [ %49, %43 ]
  %57 = phi i32 [ %51, %53 ], [ 3, %43 ]
  switch i8 %56, label %63 [
    i8 0, label %58
    i8 6, label %58
    i8 5, label %58
  ]

58:                                               ; preds = %55, %55, %55
  %59 = call i32 @cyapa_pip_state_parse(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %125, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %15, align 4
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i8 [ %62, %61 ], [ %56, %55 ]
  %65 = phi i32 [ %59, %61 ], [ %57, %55 ]
  switch i8 %64, label %70 [
    i8 0, label %66
    i8 5, label %66
  ]

66:                                               ; preds = %63, %63
  br i1 %45, label %70, label %67

67:                                               ; preds = %66
  %68 = call i32 %17(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %125, label %70

70:                                               ; preds = %67, %66, %63
  %71 = phi i32 [ %65, %66 ], [ %68, %67 ], [ %65, %63 ]
  br i1 %40, label %128, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i64 32, i1 false) #12
  %74 = call i32 @i2c_transfer_buffer_flags(ptr noundef %73, ptr noundef nonnull %5, i32 noundef 3, i16 noundef zeroext 0) #12
  %75 = icmp eq i32 %74, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br i1 %75, label %76, label %131

76:                                               ; preds = %72
  call void @msleep(i32 noundef 50) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1
  %77 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #12, !annotation !8
  %78 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  store i16 %79, ptr %4, align 4
  store i16 0, ptr %19, align 2
  store i16 1, ptr %18, align 4
  store ptr %3, ptr %20, align 4
  %80 = load i16, ptr %78, align 2
  store i16 %80, ptr %21, align 4
  store i16 1, ptr %22, align 2
  store i16 3, ptr %23, align 4
  store ptr %6, ptr %24, align 4
  %81 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %4, i32 noundef 2) #12
  %84 = icmp eq i32 %83, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br i1 %84, label %85, label %131

85:                                               ; preds = %76
  %86 = load i8, ptr %6, align 1
  store i8 %86, ptr %10, align 4
  %87 = load i8, ptr %11, align 1
  store i8 %87, ptr %12, align 1
  %88 = load i8, ptr %13, align 1
  store i8 %88, ptr %14, align 2
  %89 = load i8, ptr %15, align 4
  switch i8 %89, label %95 [
    i8 0, label %90
    i8 3, label %90
  ]

90:                                               ; preds = %85, %85
  %91 = call i32 %16(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %90
  %94 = load i8, ptr %15, align 4
  br label %95

95:                                               ; preds = %93, %85
  %96 = phi i8 [ %94, %93 ], [ %89, %85 ]
  %97 = phi i32 [ %91, %93 ], [ 0, %85 ]
  switch i8 %96, label %103 [
    i8 0, label %98
    i8 6, label %98
    i8 5, label %98
  ]

98:                                               ; preds = %95, %95, %95
  %99 = call i32 @cyapa_pip_state_parse(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %98
  %102 = load i8, ptr %15, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi i8 [ %102, %101 ], [ %96, %95 ]
  %105 = phi i32 [ %99, %101 ], [ %97, %95 ]
  switch i8 %104, label %110 [
    i8 0, label %106
    i8 5, label %106
  ]

106:                                              ; preds = %103, %103
  br i1 %45, label %110, label %107

107:                                              ; preds = %106
  %108 = call i32 %17(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #12
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %107, %106, %103
  %111 = phi i32 [ %105, %106 ], [ %108, %107 ], [ %105, %103 ]
  br i1 %40, label %128, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i64 32, i1 false) #12
  %114 = call i32 @i2c_transfer_buffer_flags(ptr noundef %113, ptr noundef nonnull %5, i32 noundef 3, i16 noundef zeroext 0) #12
  %115 = icmp eq i32 %114, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  call void @msleep(i32 noundef 50) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1
  %117 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #12, !annotation !8
  %118 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 1
  %119 = load i16, ptr %118, align 2
  store i16 %119, ptr %4, align 4
  store i16 0, ptr %19, align 2
  store i16 1, ptr %18, align 4
  store ptr %3, ptr %20, align 4
  %120 = load i16, ptr %118, align 2
  store i16 %120, ptr %21, align 4
  store i16 1, ptr %22, align 2
  store i16 3, ptr %23, align 4
  store ptr %6, ptr %24, align 4
  %121 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 3
  %122 = load ptr, ptr %121, align 8
  %123 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %4, i32 noundef 2) #12
  %124 = icmp eq i32 %123, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br i1 %124, label %137, label %131

125:                                              ; preds = %107, %98, %90, %67, %58, %50
  %126 = load i32, ptr %0, align 4
  %127 = icmp ult i32 %126, 2
  br i1 %127, label %137, label %146

128:                                              ; preds = %110, %70, %39
  %129 = phi i32 [ %41, %39 ], [ %71, %70 ], [ %111, %110 ]
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %135, label %137

131:                                              ; preds = %116, %112, %76, %72
  %132 = phi i32 [ %74, %72 ], [ %83, %76 ], [ %114, %112 ], [ %123, %116 ]
  %133 = icmp slt i32 %132, 0
  %134 = select i1 %133, i32 %132, i32 -5
  br label %135

135:                                              ; preds = %131, %128, %36
  %136 = phi i32 [ %129, %128 ], [ %32, %36 ], [ %134, %131 ]
  br label %137

137:                                              ; preds = %135, %128, %125, %116
  %138 = phi i32 [ -11, %128 ], [ %136, %135 ], [ -11, %125 ], [ -11, %116 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #12
  call void @msleep(i32 noundef 100) #12
  %139 = add nsw i32 %26, -1
  %140 = icmp eq i32 %26, 0
  br i1 %140, label %141, label %25

141:                                              ; preds = %137
  %142 = icmp eq i32 %138, -11
  %143 = icmp eq i32 %138, -110
  %144 = or i1 %142, %143
  %145 = select i1 %144, i32 -110, i32 %138
  br label %147

146:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #12
  br label %147

147:                                              ; preds = %146, %141
  %148 = phi i32 [ %145, %141 ], [ 0, %146 ]
  ret i32 %148
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = tail call i16 @llvm.umax.i16(i16 %0, i16 20)
  %3 = tail call i16 @llvm.umin.i16(i16 %2, i16 1000)
  %4 = icmp ult i16 %3, 100
  %5 = udiv i16 %3, 10
  %6 = trunc i16 %5 to i8
  %7 = udiv i16 %3, 20
  %8 = trunc i16 %7 to i8
  %9 = add nuw nsw i8 %8, 5
  %10 = select i1 %4, i8 %6, i8 %9
  %11 = shl i8 %10, 2
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @cyapa_pwr_cmd_to_sleep_time(i8 noundef zeroext %0) local_unnamed_addr #5 {
  %2 = lshr i8 %0, 2
  %3 = zext i8 %2 to i32
  %4 = icmp ult i8 %0, 40
  %5 = mul nuw nsw i32 %3, 10
  %6 = mul nuw nsw i32 %3, 20
  %7 = add nuw nsw i32 %6, 65436
  %8 = select i1 %4, i32 %5, i32 %7
  %9 = trunc i32 %8 to i16
  ret i16 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cyapa_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #6 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @cyapa_driver) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_i2c_reg_read_block(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_read_block(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_state_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca %union.i2c_smbus_data, align 2
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6) #12
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %14) #12
  %20 = and i32 %19, 253231104
  %21 = icmp eq i32 %20, 253231104
  %22 = or i8 %13, 2
  %23 = select i1 %21, i8 %22, i8 %13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #13
  br label %149

26:                                               ; preds = %2
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = call i32 @i2c_smbus_xfer(ptr noundef %27, i16 noundef zeroext %29, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %3) #12
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %149, label %32

32:                                               ; preds = %26
  %33 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 752, i32 noundef 3520) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %149, label %35

35:                                               ; preds = %32
  %36 = icmp eq i8 %23, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 8
  store i8 1, ptr %38, align 1
  br label %39

39:                                               ; preds = %37, %35
  %40 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 4
  store ptr %0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %33, ptr %41, align 8
  %42 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 6
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = load i16, ptr %28, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %42, ptr noundef nonnull @.str.2, i32 noundef %45, i32 noundef %47)
  %49 = call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  %50 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 3
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = ptrtoint ptr %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %53) #13
  br label %149

54:                                               ; preds = %39
  %55 = call i32 @regulator_enable(ptr noundef %49) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %55) #13
  br label %149

58:                                               ; preds = %54
  %59 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @cyapa_disable_regulator, ptr noundef nonnull %33) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %50, align 4
  %63 = call i32 @regulator_disable(ptr noundef %62) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %59) #13
  br label %149

64:                                               ; preds = %58
  store i32 0, ptr %33, align 4
  %65 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 21
  store i8 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 33
  call void @__mutex_init(ptr noundef %66, ptr noundef nonnull @.str.13, ptr noundef nonnull @cyapa_initialize.__key) #12
  %67 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 9
  store i8 20, ptr %67, align 2
  %68 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 10
  store i16 50, ptr %68, align 4
  %69 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen3_ops, i32 0, i32 8), align 4
  %70 = call i32 %69(ptr noundef nonnull %33) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %64
  %73 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen5_ops, i32 0, i32 8), align 4
  %74 = call i32 %73(ptr noundef nonnull %33) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load ptr, ptr getelementptr inbounds (%struct.cyapa_dev_ops, ptr @cyapa_gen6_ops, i32 0, i32 8), align 4
  %78 = call i32 %77(ptr noundef nonnull %33) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = call fastcc i32 @cyapa_detect(ptr noundef nonnull %33) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 2
  %85 = load i8, ptr %84, align 1, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 34
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %89, i32 0, i32 14
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %91(ptr noundef nonnull %33, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %95

93:                                               ; preds = %80, %76, %72, %64
  %94 = phi i32 [ %70, %64 ], [ %74, %72 ], [ %81, %80 ], [ %78, %76 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #13
  br label %149

95:                                               ; preds = %87, %83
  %96 = call i32 @devm_device_add_group(ptr noundef %4, ptr noundef nonnull @cyapa_sysfs_group) #12
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %96) #13
  br label %149

99:                                               ; preds = %95
  %100 = load ptr, ptr %40, align 4
  %101 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4, i32 11, i32 1
  %103 = load i16, ptr %102, align 4
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %99
  %107 = call i32 @sysfs_merge_group(ptr noundef %101, ptr noundef nonnull @cyapa_power_wakeup_group) #12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.40, i32 noundef %107) #13
  br label %116

110:                                              ; preds = %106
  %111 = call i32 @devm_add_action(ptr noundef %101, ptr noundef nonnull @cyapa_remove_power_wakeup_group, ptr noundef nonnull %33) #12
  %112 = icmp eq i32 %111, 0
  %113 = load ptr, ptr %40, align 4
  br i1 %112, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 4
  call void @sysfs_unmerge_group(ptr noundef %115, ptr noundef nonnull @cyapa_power_wakeup_group) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.41, i32 noundef %111) #13
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi i32 [ %107, %109 ], [ %111, %114 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %117) #13
  br label %149

118:                                              ; preds = %110, %99
  %119 = phi ptr [ %100, %99 ], [ %113, %110 ]
  %120 = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 11
  store i8 12, ptr %121, align 2
  %122 = getelementptr inbounds %struct.cyapa, ptr %33, i32 0, i32 12
  store i16 30, ptr %122, align 4
  %123 = call i32 @sysfs_merge_group(ptr noundef %120, ptr noundef nonnull @cyapa_power_runtime_group) #12
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.46, i32 noundef %123) #13
  br label %132

126:                                              ; preds = %118
  %127 = call i32 @devm_add_action(ptr noundef %120, ptr noundef nonnull @cyapa_remove_power_runtime_group, ptr noundef nonnull %33) #12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %40, align 4
  %131 = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 4
  call void @sysfs_unmerge_group(ptr noundef %131, ptr noundef nonnull @cyapa_power_runtime_group) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.47, i32 noundef %127) #13
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i32 [ %127, %129 ], [ %123, %125 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %133) #13
  br label %149

134:                                              ; preds = %126
  %135 = call i32 @__pm_runtime_set_status(ptr noundef %120, i32 noundef 2) #12
  call void @__pm_runtime_use_autosuspend(ptr noundef %120, i1 noundef zeroext true) #12
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %120, i32 noundef 2000) #12
  %136 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %137, ptr noundef null, ptr noundef nonnull @cyapa_irq, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %33) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %138) #13
  br label %149

141:                                              ; preds = %134
  %142 = load i32, ptr %136, align 4
  call void @disable_irq(i32 noundef %142) #12
  %143 = load i8, ptr %84, align 1, !range !9
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = call fastcc i32 @cyapa_create_input_dev(ptr noundef nonnull %33)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %146) #13
  br label %149

149:                                              ; preds = %148, %145, %141, %140, %132, %116, %98, %93, %61, %57, %52, %32, %26, %25
  %150 = phi i32 [ -5, %25 ], [ %53, %52 ], [ %55, %57 ], [ %59, %61 ], [ %94, %93 ], [ %96, %98 ], [ %117, %116 ], [ %133, %132 ], [ %138, %140 ], [ %146, %148 ], [ -19, %26 ], [ -12, %32 ], [ 0, %145 ], [ 0, %141 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #12
  ret i32 %150
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cyapa_disable_regulator(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_disable(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @pm_wakeup_dev_event(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #12
  br label %15

15:                                               ; preds = %14, %10, %2
  %16 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 34
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 %19(ptr noundef %1) #12
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %26, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #12
  br label %58

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 2
  %32 = load i8, ptr %31, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %35, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %1) #12
  %39 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  %40 = tail call i64 @ktime_get_mono_fast_ns() #12
  %41 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 12) #12
  %43 = icmp ne i32 %38, 0
  %44 = load i8, ptr %31, align 1, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i1 true, i1 %43
  br i1 %46, label %47, label %58

47:                                               ; preds = %34, %30
  %48 = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 33
  %49 = tail call i32 @mutex_trylock(ptr noundef %48) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %52, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #12
  br label %58

56:                                               ; preds = %47
  %57 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %48) #12
  br label %58

58:                                               ; preds = %56, %51, %34, %25, %15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_create_input_dev(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %106, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 25
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %106, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @devm_input_allocate_device(ptr noundef %4) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.50) #13
  br label %106

16:                                               ; preds = %12
  store ptr @.str.51, ptr %13, align 8
  %17 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3
  store i16 24, ptr %19, align 4
  %20 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3, i32 3
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3, i32 2
  store i16 0, ptr %21, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 40, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 31
  store ptr @cyapa_open, ptr %25, align 4
  %26 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 32
  store ptr @cyapa_close, ptr %26, align 8
  %27 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 40, i32 8
  store ptr %0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 8
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 22
  %32 = load i32, ptr %31, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 53, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #12
  %33 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 23
  %34 = load i32, ptr %33, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 54, i32 noundef 0, i32 noundef %34, i32 noundef 0, i32 noundef 0) #12
  %35 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 32
  %36 = load i32, ptr %35, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 58, i32 noundef 0, i32 noundef %36, i32 noundef 0, i32 noundef 0) #12
  %37 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %38 = load i8, ptr %37, align 4
  %39 = icmp ugt i8 %38, 3
  br i1 %39, label %40, label %44

40:                                               ; preds = %16
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 52, i32 noundef -127, i32 noundef 127, i32 noundef 0, i32 noundef 0) #12
  %41 = load i8, ptr %37, align 4
  %42 = icmp ugt i8 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 50, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 51, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %13, i32 noundef 25, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  br label %44

44:                                               ; preds = %43, %40, %16
  %45 = load i32, ptr %31, align 4
  %46 = load i32, ptr %5, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %13) #12
  %47 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 26
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = sdiv i32 %45, %46
  %52 = getelementptr %struct.input_absinfo, ptr %48, i32 53, i32 5
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, ptr %33, align 4
  %55 = load i32, ptr %9, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %13) #12
  %56 = load ptr, ptr %47, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = sdiv i32 %54, %55
  %60 = getelementptr %struct.input_absinfo, ptr %56, i32 54, i32 5
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 20
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 6, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, 65536
  store i32 %69, ptr %67, align 4
  %70 = load i8, ptr %62, align 1
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i8 [ %70, %66 ], [ %63, %61 ]
  %73 = and i8 %72, 32
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 6, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 262144
  store i32 %78, ptr %76, align 4
  %79 = load i8, ptr %62, align 1
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i8 [ %79, %75 ], [ %72, %71 ]
  %82 = and i8 %81, 16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 6, i32 8
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %86, 131072
  store i32 %87, ptr %85, align 4
  %88 = load i8, ptr %62, align 1
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i8 [ %88, %84 ], [ %81, %80 ]
  %91 = icmp eq i8 %90, 8
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 4
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %13, i32 noundef 15, i32 noundef 5) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef %97) #13
  br label %106

100:                                              ; preds = %96
  %101 = tail call i32 @input_register_device(ptr noundef nonnull %13) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.53, i32 noundef %101) #13
  br label %106

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  store ptr %13, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %103, %99, %15, %8, %1
  %107 = phi i32 [ %97, %99 ], [ %101, %103 ], [ 0, %104 ], [ -12, %15 ], [ -22, %8 ], [ -22, %1 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_detect(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %5 = tail call i32 @cyapa_poll_state(ptr noundef %0, i32 noundef 4000) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %50 [
    i8 6, label %12
    i8 5, label %10
    i8 3, label %11
  ]

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %10, %7
  %13 = phi ptr [ @cyapa_gen3_ops, %11 ], [ @cyapa_gen5_ops, %10 ], [ @cyapa_gen6_ops, %7 ]
  %14 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 34
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %13, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i8, ptr %8, align 4
  switch i8 %20, label %30 [
    i8 6, label %21
    i8 5, label %24
    i8 3, label %27
  ]

21:                                               ; preds = %19
  %22 = load i32, ptr %0, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %31, label %30

24:                                               ; preds = %19
  %25 = load i32, ptr %0, align 4
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %31, label %30

27:                                               ; preds = %19
  %28 = load i32, ptr %0, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24, %21, %19, %12
  br label %31

31:                                               ; preds = %30, %27, %24, %21
  %32 = phi i8 [ 0, %30 ], [ 1, %27 ], [ 1, %21 ], [ 1, %24 ]
  %33 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  store i8 %32, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %1
  %35 = phi i32 [ %5, %1 ], [ %17, %31 ]
  switch i32 %35, label %36 [
    i32 0, label %52
    i32 -19, label %50
    i32 -110, label %50
  ]

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 21
  %38 = load i8, ptr %37, align 4
  switch i8 %38, label %50 [
    i8 6, label %39
    i8 5, label %42
    i8 3, label %45
  ]

39:                                               ; preds = %36
  %40 = load i32, ptr %0, align 4
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %49, label %50

42:                                               ; preds = %36
  %43 = load i32, ptr %0, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %49, label %50

45:                                               ; preds = %36
  %46 = load i32, ptr %0, align 4
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42, %39
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.14) #13
  br label %52

50:                                               ; preds = %45, %42, %39, %36, %34, %34, %7
  %51 = phi i32 [ %35, %34 ], [ %35, %34 ], [ %35, %36 ], [ %35, %39 ], [ %35, %42 ], [ %35, %45 ], [ -19, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %51) #13
  br label %52

52:                                               ; preds = %50, %49, %34
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ], [ %35, %34 ]
  ret i32 %53
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_show_fm_ver(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 33
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 18
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 19
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %12, i32 noundef %15) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %16, %9 ], [ %7, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_show_product_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 33
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 16
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef %10) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ %7, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_update_fw_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #1 {
  %5 = alloca ptr, align 4
  %6 = alloca [255 x i8], align 1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(255) %6, i8 0, i32 255, i1 false), !annotation !8
  %9 = icmp ugt i32 %3, 254
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #13
  br label %143

11:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %2, i32 %3, i1 false)
  %12 = add nsw i32 %3, -1
  %13 = getelementptr [255 x i8], ptr %6, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 10
  %16 = getelementptr [255 x i8], ptr %6, i32 0, i32 %3
  %17 = select i1 %15, ptr %13, ptr %16
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  tail call void @input_unregister_device(ptr noundef nonnull %19) #12
  store ptr null, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 33
  %24 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %8)
  br label %143

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !8
  %32 = call i32 @request_firmware(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %31) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24, ptr noundef nonnull %6, i32 noundef %32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %130

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 34
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = call i32 %38(ptr noundef %8, ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull %6) #13
  %43 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %43) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %130

44:                                               ; preds = %35
  %45 = call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #12
  %46 = load ptr, ptr %18, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = call zeroext i1 @input_device_enabled(ptr noundef nonnull %46) #12
  br i1 %49, label %67, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 2
  %52 = load i8, ptr %51, align 1, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %44
  %55 = load ptr, ptr %36, align 4
  %56 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %55, i32 0, i32 14
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %8, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %59

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 21
  %61 = load i8, ptr %60, align 4
  %62 = icmp ugt i8 %61, 4
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load ptr, ptr %29, align 4
  %65 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  call void @enable_irq(i32 noundef %66) #12
  br label %67

67:                                               ; preds = %63, %59, %48
  %68 = load ptr, ptr %36, align 4
  %69 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %8) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %71) #13
  br label %97

74:                                               ; preds = %67
  %75 = load ptr, ptr %36, align 4
  %76 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %77(ptr noundef %8) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27, i32 noundef %78) #13
  br label %97

81:                                               ; preds = %74
  %82 = load ptr, ptr %36, align 4
  %83 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %5, align 4
  %86 = call i32 %84(ptr noundef %8, ptr noundef %85) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.28, i32 noundef %86) #13
  br label %97

89:                                               ; preds = %81
  %90 = load ptr, ptr %36, align 4
  %91 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %5, align 4
  %94 = call i32 %92(ptr noundef %8, ptr noundef %93) #12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.29, i32 noundef %94) #13
  br label %97

97:                                               ; preds = %96, %89, %88, %80, %73
  %98 = phi i32 [ %71, %73 ], [ %78, %80 ], [ %86, %88 ], [ %94, %96 ], [ 0, %89 ]
  %99 = load ptr, ptr %18, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = call zeroext i1 @input_device_enabled(ptr noundef nonnull %99) #12
  br i1 %102, label %121, label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 21
  %105 = load i8, ptr %104, align 4
  %106 = icmp ugt i8 %105, 4
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load ptr, ptr %29, align 4
  %109 = getelementptr inbounds %struct.i2c_client, ptr %108, i32 0, i32 6
  %110 = load i32, ptr %109, align 4
  call void @disable_irq(i32 noundef %110) #12
  br label %111

111:                                              ; preds = %107, %103
  br i1 %100, label %116, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.cyapa, ptr %8, i32 0, i32 2
  %114 = load i8, ptr %113, align 1, !range !9
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112, %111
  %117 = load ptr, ptr %36, align 4
  %118 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %117, i32 0, i32 14
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 %119(ptr noundef %8, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %121

121:                                              ; preds = %116, %112, %101
  %122 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #12, !srcloc !11
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 0, i32 -1, ptr elementtype(i32) %122) #12, !srcloc !12
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  br label %127

127:                                              ; preds = %126, %121
  %128 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %128) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %129 = icmp eq i32 %98, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127, %42, %34
  %131 = phi i32 [ %32, %34 ], [ %98, %127 ], [ %40, %42 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %131) #13
  br label %132

132:                                              ; preds = %130, %127
  %133 = phi i1 [ true, %127 ], [ false, %130 ]
  %134 = phi i32 [ 0, %127 ], [ %131, %130 ]
  %135 = call fastcc i32 @cyapa_reinitialize(ptr noundef %8)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %135) #13
  %138 = select i1 %133, i32 %135, i32 %134
  br label %139

139:                                              ; preds = %137, %132
  %140 = phi i32 [ %138, %137 ], [ %134, %132 ]
  call void @mutex_unlock(ptr noundef %23) #12
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 %3, i32 %140
  br label %143

143:                                              ; preds = %139, %26, %10
  %144 = phi i32 [ -22, %10 ], [ %24, %26 ], [ %142, %139 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %6) #12
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_reinitialize(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 11, i32 15
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #12
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 34
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %18, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %22

22:                                               ; preds = %16, %12
  %23 = tail call fastcc i32 @cyapa_detect(ptr noundef %0)
  %24 = icmp ne i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i8, ptr %13, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @cyapa_create_input_dev(ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %31) #13
  br label %34

34:                                               ; preds = %33, %30, %27, %22
  %35 = phi i32 [ %23, %22 ], [ %31, %33 ], [ 0, %30 ], [ 0, %27 ]
  br i1 %25, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %6) #12
  br i1 %37, label %47, label %38

38:                                               ; preds = %36, %34
  %39 = load i8, ptr %13, align 1, !range !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 34
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %43, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #12
  br label %58

47:                                               ; preds = %36
  %48 = icmp eq i32 %35, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %47
  %50 = load i8, ptr %13, align 1, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %4) #12
  %54 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #12
  %55 = tail call i64 @ktime_get_mono_fast_ns() #12
  %56 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 11, i32 22
  store volatile i64 %55, ptr %56, align 8
  %57 = tail call i32 @__pm_runtime_suspend(ptr noundef %4, i32 noundef 12) #12
  br label %58

58:                                               ; preds = %52, %49, %47, %41, %38
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_show_baseline(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 33
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 2
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %15) #12
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %10, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 34
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %5, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %28

28:                                               ; preds = %22, %19
  %29 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 21
  %30 = load i8, ptr %29, align 4
  %31 = icmp ugt i8 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  tail call void @enable_irq(i32 noundef %36) #12
  br label %37

37:                                               ; preds = %32, %28, %17
  %38 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 34
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %43 = load ptr, ptr %14, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %43) #12
  br i1 %46, label %65, label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 21
  %49 = load i8, ptr %48, align 4
  %50 = icmp ugt i8 %49, 4
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  tail call void @disable_irq(i32 noundef %55) #12
  br label %56

56:                                               ; preds = %51, %47
  br i1 %44, label %60, label %57

57:                                               ; preds = %56
  %58 = load i8, ptr %10, align 1, !range !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57, %56
  %61 = load ptr, ptr %38, align 4
  %62 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %61, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %5, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %65

65:                                               ; preds = %60, %57, %45, %9
  %66 = phi i32 [ -16, %9 ], [ %42, %45 ], [ %42, %57 ], [ %42, %60 ]
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %67

67:                                               ; preds = %65, %3
  %68 = phi i32 [ %66, %65 ], [ %7, %3 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_calibrate_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 33
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %71

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 2
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @mutex_unlock(ptr noundef %7) #12
  br label %69

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %17) #12
  br i1 %20, label %39, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %11, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %15
  %25 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 34
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %26, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %6, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %30

30:                                               ; preds = %24, %21
  %31 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 21
  %32 = load i8, ptr %31, align 4
  %33 = icmp ugt i8 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  tail call void @enable_irq(i32 noundef %38) #12
  br label %39

39:                                               ; preds = %34, %30, %19
  %40 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 34
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
  %45 = load ptr, ptr %16, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %45) #12
  br i1 %48, label %67, label %49

49:                                               ; preds = %47, %39
  %50 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 21
  %51 = load i8, ptr %50, align 4
  %52 = icmp ugt i8 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.cyapa, ptr %6, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  tail call void @disable_irq(i32 noundef %57) #12
  br label %58

58:                                               ; preds = %53, %49
  br i1 %46, label %62, label %59

59:                                               ; preds = %58
  %60 = load i8, ptr %11, align 1, !range !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %58
  %63 = load ptr, ptr %40, align 4
  %64 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %63, i32 0, i32 14
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %6, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #12
  br label %67

67:                                               ; preds = %62, %59, %47
  tail call void @mutex_unlock(ptr noundef %7) #12
  %68 = icmp slt i32 %44, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %67, %14
  %70 = phi i32 [ -16, %14 ], [ %44, %67 ]
  br label %71

71:                                               ; preds = %69, %67, %4
  %72 = phi i32 [ %8, %4 ], [ %70, %69 ], [ %3, %67 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_show_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 33
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 21
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds [8 x ptr], ptr @switch.table.cyapa_show_mode, i32 0, i32 %14
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi ptr [ %18, %16 ], [ @.str.39, %9 ]
  %21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %12, ptr noundef nonnull %20) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ %21, %19 ], [ %7, %3 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cyapa_remove_power_wakeup_group(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void @sysfs_unmerge_group(ptr noundef %4, ptr noundef nonnull @cyapa_power_wakeup_group) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_show_suspend_scanrate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 33
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 9
  %11 = load i8, ptr %10, align 2
  %12 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 10
  %13 = load i16, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %6) #12
  switch i8 %11, label %18 [
    i8 4, label %14
    i8 0, label %16
  ]

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.43) #12
  br label %35

16:                                               ; preds = %9
  %17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.44) #12
  br label %35

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 21
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = lshr i8 %11, 2
  %24 = zext i8 %23 to i32
  %25 = icmp ult i8 %11, 40
  %26 = mul nuw nsw i32 %24, 10
  %27 = mul nuw nsw i32 %24, 20
  %28 = add nuw nsw i32 %27, 65436
  %29 = select i1 %25, i32 %26, i32 %28
  %30 = trunc i32 %29 to i16
  br label %31

31:                                               ; preds = %22, %18
  %32 = phi i16 [ %30, %22 ], [ %13, %18 ]
  %33 = zext i16 %32 to i32
  %34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.45, i32 noundef %33) #12
  br label %35

35:                                               ; preds = %31, %16, %14, %3
  %36 = phi i32 [ %7, %3 ], [ %34, %31 ], [ %17, %16 ], [ %15, %14 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_update_suspend_scanrate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !8
  %8 = getelementptr inbounds %struct.cyapa, ptr %7, i32 0, i32 33
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.43) #12
  br i1 %12, label %31, label %13

13:                                               ; preds = %11
  %14 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.44) #12
  br i1 %14, label %31, label %15

15:                                               ; preds = %13
  %16 = call i32 @kstrtou16(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i16, ptr %5, align 2
  %20 = call i16 @llvm.umin.i16(i16 %19, i16 1000)
  %21 = getelementptr inbounds %struct.cyapa, ptr %7, i32 0, i32 10
  store i16 %20, ptr %21, align 4
  %22 = call i16 @llvm.umax.i16(i16 %20, i16 20) #12
  %23 = icmp ult i16 %22, 100
  %24 = udiv i16 %22, 10
  %25 = trunc i16 %24 to i8
  %26 = udiv i16 %22, 20
  %27 = trunc i16 %26 to i8
  %28 = add nuw nsw i8 %27, 5
  %29 = select i1 %23, i8 %25, i8 %28
  %30 = shl i8 %29, 2
  br label %31

31:                                               ; preds = %18, %13, %11
  %32 = phi i8 [ %30, %18 ], [ 4, %11 ], [ 0, %13 ]
  %33 = getelementptr inbounds %struct.cyapa, ptr %7, i32 0, i32 9
  store i8 %32, ptr %33, align 2
  br label %34

34:                                               ; preds = %31, %15
  %35 = phi i32 [ -22, %15 ], [ %3, %31 ]
  call void @mutex_unlock(ptr noundef %8) #12
  br label %36

36:                                               ; preds = %34, %4
  %37 = phi i32 [ %35, %34 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cyapa_remove_power_runtime_group(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.cyapa, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void @sysfs_unmerge_group(ptr noundef %4, ptr noundef nonnull @cyapa_power_runtime_group) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_show_rt_suspend_scanrate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 33
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 11
  %11 = load i8, ptr %10, align 2
  %12 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 12
  %13 = load i16, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %6) #12
  %14 = getelementptr inbounds %struct.cyapa, ptr %5, i32 0, i32 21
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = lshr i8 %11, 2
  %19 = zext i8 %18 to i32
  %20 = icmp ult i8 %11, 40
  %21 = mul nuw nsw i32 %19, 10
  %22 = mul nuw nsw i32 %19, 20
  %23 = add nuw nsw i32 %22, 65436
  %24 = select i1 %20, i32 %21, i32 %23
  %25 = trunc i32 %24 to i16
  br label %26

26:                                               ; preds = %17, %9
  %27 = phi i16 [ %25, %17 ], [ %13, %9 ]
  %28 = zext i16 %27 to i32
  %29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.45, i32 noundef %28) #12
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i32 [ %29, %26 ], [ %7, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_update_rt_suspend_scanrate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !8
  %8 = icmp eq ptr %2, null
  %9 = icmp eq i32 %3, 0
  %10 = or i1 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = call i32 @kstrtou16(ptr noundef nonnull %2, i32 noundef 10, ptr noundef nonnull %5) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.49) #13
  br label %35

15:                                               ; preds = %11
  %16 = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  %17 = getelementptr inbounds %struct.cyapa, ptr %7, i32 0, i32 33
  %18 = call i32 @mutex_lock_interruptible(ptr noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i16, ptr %5, align 2
  %22 = call i16 @llvm.umin.i16(i16 %21, i16 1000)
  %23 = getelementptr inbounds %struct.cyapa, ptr %7, i32 0, i32 12
  store i16 %22, ptr %23, align 4
  %24 = call i16 @llvm.umax.i16(i16 %22, i16 20) #12
  %25 = icmp ult i16 %24, 100
  %26 = udiv i16 %24, 10
  %27 = trunc i16 %26 to i8
  %28 = udiv i16 %24, 20
  %29 = trunc i16 %28 to i8
  %30 = add nuw nsw i8 %29, 5
  %31 = select i1 %25, i8 %27, i8 %30
  %32 = shl i8 %31, 2
  %33 = getelementptr inbounds %struct.cyapa, ptr %7, i32 0, i32 11
  store i8 %32, ptr %33, align 2
  call void @mutex_unlock(ptr noundef %17) #12
  %34 = call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 12) #12
  br label %35

35:                                               ; preds = %20, %15, %14
  %36 = phi i32 [ -22, %14 ], [ %3, %20 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_open(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 33
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 2
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 34
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %16, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %3, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.54, i32 noundef %19) #13
  br label %42

22:                                               ; preds = %10
  %23 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %3)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i8, ptr %11, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %25, %14
  %29 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  tail call void @enable_irq(i32 noundef %30) #12
  %31 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 11, i32 15
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 7
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %6) #12
  br label %37

37:                                               ; preds = %35, %28
  %38 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #12
  %39 = tail call i64 @ktime_get_mono_fast_ns() #12
  %40 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 11, i32 22
  store volatile i64 %39, ptr %40, align 8
  %41 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 12) #12
  br label %42

42:                                               ; preds = %37, %25, %22, %21
  %43 = phi i32 [ %19, %21 ], [ 0, %37 ], [ -11, %25 ], [ %23, %22 ]
  tail call void @mutex_unlock(ptr noundef %7) #12
  br label %44

44:                                               ; preds = %42, %1
  %45 = phi i32 [ %43, %42 ], [ %8, %1 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cyapa_close(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 33
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #12
  %10 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #12
  br label %15

15:                                               ; preds = %14, %1
  %16 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #12
  %17 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 2
  %18 = load i8, ptr %17, align 1, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 34
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %3, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #12
  br label %26

26:                                               ; preds = %20, %15
  tail call void @mutex_unlock(ptr noundef %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_suspend(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 33
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %68

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #12
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr i8, ptr %0, i32 476
  %15 = load i32, ptr %14, align 4
  tail call void @disable_irq(i32 noundef %15) #12
  %16 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 2
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 9
  %30 = load i8, ptr %29, align 2
  br label %31

31:                                               ; preds = %28, %24, %19
  %32 = phi i8 [ %30, %28 ], [ 0, %24 ], [ 0, %19 ]
  %33 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 34
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %34, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 10
  %38 = load i16, ptr %37, align 4
  %39 = tail call i32 %36(ptr noundef %3, i8 noundef zeroext %32, i16 noundef zeroext %38, i32 noundef 2) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %39) #13
  br label %42

42:                                               ; preds = %41, %31, %13
  %43 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 13
  %44 = load i8, ptr %43, align 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 34
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %48, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %3, i1 noundef zeroext false) #12
  br label %52

52:                                               ; preds = %46, %42
  %53 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %14, align 4
  %63 = tail call i32 @irq_set_irq_wake(i32 noundef %62, i32 noundef 1) #12
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 7
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 4
  br label %67

67:                                               ; preds = %61, %57, %52
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %68

68:                                               ; preds = %67, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_resume(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 33
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 7
  %15 = load i8, ptr %14, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 476
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 0) #12
  store i8 0, ptr %14, align 4
  br label %21

21:                                               ; preds = %17, %13, %9, %1
  %22 = tail call fastcc i32 @cyapa_reinitialize(ptr noundef %3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %22) #13
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr i8, ptr %0, i32 476
  %27 = load i32, ptr %26, align 4
  tail call void @enable_irq(i32 noundef %27) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_runtime_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 34
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 11
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 12
  %11 = load i16, ptr %10, align 4
  %12 = tail call i32 %7(ptr noundef %3, i8 noundef zeroext %9, i16 noundef zeroext %11, i32 noundef 4) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %12) #13
  br label %15

15:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cyapa_runtime_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cyapa, ptr %3, i32 0, i32 34
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cyapa_dev_ops, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 5) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %8) #13
  br label %11

11:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!10 = !{i64 2147927314}
!11 = !{i64 425624, i64 2147915595, i64 2147915621, i64 2147915668, i64 2147915690, i64 2147915718, i64 2147915738}
!12 = !{i64 412193, i64 412218, i64 412240, i64 412256, i64 412268, i64 412288, i64 412312, i64 412328, i64 412340}
!13 = !{i64 2147927440}
