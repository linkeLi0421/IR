; ModuleID = '/llk/IR/drivers/input/mouse/elan_i2c_core.c_pt.bc'
source_filename = "../drivers/input/mouse/elan_i2c_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.elan_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elan_tp_data = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, i8, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i16, i8, i8, i8, i16, i32, i32, i32, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_elan_i2c__255_1450_elan_driver_init6 = internal global ptr @elan_driver_init, section ".initcall6.init", align 4
@elan_driver = internal global %struct.i2c_driver { i32 0, ptr @elan_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @elan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elan_pm_ops, ptr null, ptr null }, ptr @elan_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_elan_driver_exit = internal global ptr @elan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author256 = internal constant [48 x i8] c"elan_i2c.author=Duson Lin <dusonlin@emc.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [52 x i8] c"elan_i2c.description=Elan I2C/SMBus Touchpad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [43 x i8] c"elan_i2c.file=drivers/input/mouse/elan_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [21 x i8] c"elan_i2c.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"elan_i2c\00", align 1
@elan_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ekth3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@elan_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @elan_suspend, ptr @elan_resume, ptr @elan_suspend, ptr @elan_resume, ptr @elan_suspend, ptr @elan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@elan_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"elan_i2c\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@elan_i2c_ops = external dso_local constant %struct.elan_transport_ops, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"not a supported I2C/SMBus adapter\0A\00", align 1
@elan_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&data->sysfs_mutex\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get 'vcc' regulator: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to add disable regulator action: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"Elan Touchpad: Module ID: 0x%04x, Firmware: 0x%04x, Sample: 0x%04x, IAP: 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"elan,trackpoint\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"cannot register irq=%d\0A\00", align 1
@elan_sysfs_groups = internal global [3 x ptr] [ptr @elan_sysfs_group, ptr @elan_baseline_sysfs_group, ptr null], align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"failed to create sysfs attributes: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"failed to register TrackPoint input device: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"device initialize failed: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to wake device up: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"failed to switch to absolute mode: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"unexpected iap version %#04x (ic type: %#04x), firmware update will not work\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"elan,x_traces\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"elan,y_traces\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"touchscreen-x-mm\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"touchscreen-y-mm\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"elan,clickpad\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"elan,middle-button\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Elan Touchpad\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Elan TrackPoint\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"invalid report id data (%x)\0A\00", align 1
@elan_report_trackpoint.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.30 = private unnamed_addr constant [99 x i8] c"received a trackpoint report while no trackpoint device has been created. Please report upstream.\0A\00", align 1
@elan_sysfs_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @elan_sysfs_entries, ptr null }, align 4
@elan_baseline_sysfs_group = internal constant %struct.attribute_group { ptr @.str.55, ptr null, ptr null, ptr @elan_baseline_sysfs_entries, ptr null }, align 4
@elan_sysfs_entries = internal global [9 x ptr] [ptr @dev_attr_product_id, ptr @dev_attr_firmware_version, ptr @dev_attr_sample_version, ptr @dev_attr_iap_version, ptr @dev_attr_fw_checksum, ptr @dev_attr_calibrate, ptr @dev_attr_mode, ptr @dev_attr_update_fw, ptr null], align 4
@dev_attr_product_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @elan_sysfs_read_product_id, ptr null }, align 4
@dev_attr_firmware_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @elan_sysfs_read_fw_ver, ptr null }, align 4
@dev_attr_sample_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @elan_sysfs_read_sm_ver, ptr null }, align 4
@dev_attr_iap_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @elan_sysfs_read_iap_ver, ptr null }, align 4
@dev_attr_fw_checksum = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @elan_sysfs_read_fw_checksum, ptr null }, align 4
@dev_attr_calibrate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 128 }, ptr null, ptr @calibrate_store }, align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @elan_sysfs_read_mode, ptr null }, align 4
@dev_attr_update_fw = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128 }, ptr null, ptr @elan_sysfs_update_fw }, align 4
@.str.31 = private unnamed_addr constant [11 x i8] c"product_id\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%d.0\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"firmware_version\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sample_version\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"iap_version\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"fw_checksum\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"calibrate\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"failed to enable calibration mode: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"failed to start calibration: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"failed to check calibration result: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"failed to calibrate. Timeout.\0A\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"failed to disable calibration mode: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"update_fw\00", align 1
@elan_sysfs_update_fw.signature = internal constant [6 x i8] c"\AAU\CC3\FF\FF", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"elan_i2c_%d.0.bin\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"failed to allocate memory for firmware name\0A\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"requesting fw '%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"failed to request firmware: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"signature mismatch (expected %*ph, got %*ph)\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"write page %d fail: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"checksum diff sw=[%04X], fw=[%04X]\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@elan_baseline_sysfs_entries = internal global [4 x ptr] [ptr @dev_attr_acquire, ptr @dev_attr_min, ptr @dev_attr_max, ptr null], align 4
@dev_attr_acquire = internal global %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 128 }, ptr null, ptr @acquire_store }, align 4
@dev_attr_min = internal global %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @min_show, ptr null }, align 4
@dev_attr_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @max_show, ptr null }, align 4
@.str.56 = private unnamed_addr constant [8 x i8] c"acquire\00", align 1
@.str.57 = private unnamed_addr constant [55 x i8] c"Failed to enable calibration mode to get baseline: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Failed to read max baseline form device: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"Failed to read min baseline form device: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [65 x i8] c"Failed to disable calibration mode after acquiring baseline: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"error %d disabling regulator\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"failed to set power %s: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"error %d enabling regulator\0A\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"power up when resuming failed: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"initialize when resuming failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_elan_driver_exit, ptr @__initcall__kmod_elan_i2c__255_1450_elan_driver_init6, ptr @elan_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @elan_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @elan_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @elan_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @elan_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %11) #12
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 132, i32 noundef 3520) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %223, label %23

22:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #13
  br label %223

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %20, ptr %24, align 8
  %25 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 4
  store ptr @elan_i2c_ops, ptr %25, align 4
  store ptr %0, ptr %20, align 4
  %26 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 5
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %27, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #12
  %28 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull @elan_probe.__key) #12
  %29 = tail call ptr @devm_regulator_get(ptr noundef %9, ptr noundef nonnull @.str.3) #12
  %30 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 3
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = icmp eq ptr %29, inttoptr (i32 -517 to ptr)
  br i1 %33, label %223, label %34

34:                                               ; preds = %32
  %35 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %35) #13
  br label %223

36:                                               ; preds = %23
  %37 = tail call i32 @regulator_enable(ptr noundef %29) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %37) #13
  br label %223

40:                                               ; preds = %36
  %41 = tail call i32 @devm_add_action(ptr noundef %9, ptr noundef nonnull @elan_disable_regulator, ptr noundef nonnull %20) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %30, align 4
  %45 = tail call i32 @regulator_disable(ptr noundef %44) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %41) #13
  br label %223

46:                                               ; preds = %40
  %47 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %223, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @elan_initialize(ptr noundef nonnull %20, i1 noundef zeroext false)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %223

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @elan_query_device_info(ptr noundef nonnull %20)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %223

55:                                               ; preds = %52
  %56 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1, !annotation !8
  %57 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 8
  %59 = tail call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.18, ptr noundef %58, i32 noundef 1) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 9
  %63 = tail call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.19, ptr noundef %62, i32 noundef 1) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %55
  %66 = load ptr, ptr %25, align 4
  %67 = getelementptr inbounds %struct.elan_transport_ops, ptr %66, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %20, align 4
  %70 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 9
  %71 = tail call i32 %68(ptr noundef %69, ptr noundef %58, ptr noundef %70) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %152

73:                                               ; preds = %61
  %74 = load i32, ptr %58, align 4
  %75 = add i32 %74, -1
  store i32 %75, ptr %58, align 4
  %76 = load i32, ptr %62, align 4
  %77 = add i32 %76, -1
  store i32 %77, ptr %62, align 4
  br label %78

78:                                               ; preds = %73, %65
  %79 = call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.20, ptr noundef nonnull %3, i32 noundef 1) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.21, ptr noundef nonnull %4, i32 noundef 1) #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr %25, align 4
  %86 = getelementptr inbounds %struct.elan_transport_ops, ptr %85, i32 0, i32 13
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %20, align 4
  %89 = call i32 %87(ptr noundef %88, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %84, %81
  %92 = load i32, ptr %58, align 4
  %93 = load i32, ptr %3, align 4
  %94 = udiv i32 %92, %93
  %95 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 10
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 9
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %4, align 4
  %99 = udiv i32 %97, %98
  %100 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 11
  store i32 %99, ptr %100, align 4
  %101 = call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, i32 noundef 1) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.23, ptr noundef nonnull %6, i32 noundef 1) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %103, %91
  %107 = load ptr, ptr %25, align 4
  %108 = getelementptr inbounds %struct.elan_transport_ops, ptr %107, i32 0, i32 12
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %20, align 4
  %111 = call i32 %109(ptr noundef %110, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %106
  %114 = load i8, ptr %7, align 1
  %115 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 14
  %116 = load i8, ptr %115, align 4
  %117 = icmp ult i8 %116, 2
  %118 = zext i8 %114 to i32
  %119 = select i1 %117, i32 10, i32 100
  %120 = select i1 %117, i32 790, i32 300
  %121 = mul nuw nsw i32 %119, %118
  %122 = add nuw nsw i32 %121, %120
  %123 = mul nuw nsw i32 %122, 10
  %124 = udiv i32 %123, 254
  %125 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 12
  store i32 %124, ptr %125, align 4
  %126 = load i8, ptr %8, align 1
  %127 = zext i8 %126 to i32
  %128 = mul nuw nsw i32 %119, %127
  %129 = add nuw nsw i32 %128, %120
  %130 = mul nuw nsw i32 %129, 10
  %131 = udiv i32 %130, 254
  br label %142

132:                                              ; preds = %103
  %133 = load i32, ptr %58, align 4
  %134 = add i32 %133, 1
  %135 = load i32, ptr %5, align 4
  %136 = udiv i32 %134, %135
  %137 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 12
  store i32 %136, ptr %137, align 4
  %138 = load i32, ptr %96, align 4
  %139 = add i32 %138, 1
  %140 = load i32, ptr %6, align 4
  %141 = udiv i32 %139, %140
  br label %142

142:                                              ; preds = %132, %113
  %143 = phi i32 [ %141, %132 ], [ %131, %113 ]
  %144 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 13
  store i32 %143, ptr %144, align 4
  %145 = call zeroext i1 @device_property_present(ptr noundef %57, ptr noundef nonnull @.str.24) #12
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 32
  store i8 1, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %142
  %149 = call zeroext i1 @device_property_present(ptr noundef %57, ptr noundef nonnull @.str.25) #12
  br i1 %149, label %150, label %154

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 33
  store i8 1, ptr %151, align 1
  br label %154

152:                                              ; preds = %106, %84, %65
  %153 = phi i32 [ %111, %106 ], [ %89, %84 ], [ %71, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %223

154:                                              ; preds = %150, %148
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %155 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 15
  %156 = load i16, ptr %155, align 2
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 16
  %159 = load i8, ptr %158, align 4
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 17
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 18
  %165 = load i8, ptr %164, align 2
  %166 = zext i8 %165 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %157, i32 noundef %160, i32 noundef %163, i32 noundef %166) #13
  %167 = call fastcc i32 @elan_setup_input_device(ptr noundef nonnull %20)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %223

169:                                              ; preds = %154
  %170 = call zeroext i1 @device_property_present(ptr noundef %9, ptr noundef nonnull @.str.8) #12
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = call fastcc i32 @elan_setup_trackpoint_input_device(ptr noundef nonnull %20)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %223

174:                                              ; preds = %171, %169
  %175 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = call ptr @irq_get_irq_data(i32 noundef %176) #12
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, ptr %175, align 4
  br label %189

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.irq_data, ptr %177, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 15
  %186 = icmp eq i32 %185, 0
  %187 = load i32, ptr %175, align 4
  %188 = or i32 %185, 8192
  br i1 %186, label %189, label %191

189:                                              ; preds = %181, %179
  %190 = phi i32 [ %180, %179 ], [ %187, %181 ]
  br label %191

191:                                              ; preds = %189, %181
  %192 = phi i32 [ %190, %189 ], [ %187, %181 ]
  %193 = phi i32 [ 8194, %189 ], [ %188, %181 ]
  %194 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %195 = call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %192, ptr noundef null, ptr noundef nonnull @elan_isr, i32 noundef %193, ptr noundef %194, ptr noundef nonnull %20) #12
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %191
  %198 = load i32, ptr %175, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %198) #13
  br label %223

199:                                              ; preds = %191
  %200 = call i32 @devm_device_add_groups(ptr noundef %9, ptr noundef nonnull @elan_sysfs_groups) #12
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %200) #13
  br label %223

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = call i32 @input_register_device(ptr noundef %205) #12
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %206) #13
  br label %223

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.elan_tp_data, ptr %20, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = call i32 @input_register_device(ptr noundef nonnull %211) #12
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %214) #13
  br label %223

217:                                              ; preds = %213, %209
  %218 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %219 = load ptr, ptr %218, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call i32 @device_init_wakeup(ptr noundef %9, i1 noundef zeroext true) #12
  br label %223

223:                                              ; preds = %221, %217, %216, %208, %202, %197, %171, %154, %152, %52, %49, %46, %43, %39, %34, %32, %22, %19
  %224 = phi i32 [ %37, %39 ], [ %41, %43 ], [ %195, %197 ], [ %200, %202 ], [ %206, %208 ], [ %214, %216 ], [ -5, %22 ], [ -12, %19 ], [ %35, %34 ], [ -517, %32 ], [ -6, %46 ], [ %50, %49 ], [ %53, %52 ], [ %167, %154 ], [ %172, %171 ], [ 0, %221 ], [ 0, %217 ], [ %153, %152 ]
  ret i32 %224
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @elan_disable_regulator(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_disable(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_initialize(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 14
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 24
  %7 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 17
  %8 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 32
  %9 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 23
  br label %10

10:                                               ; preds = %81, %2
  %11 = phi i1 [ %1, %2 ], [ false, %81 ]
  %12 = phi i32 [ 3, %2 ], [ %83, %81 ]
  %13 = load ptr, ptr %0, align 4
  br i1 %11, label %23, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %13) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 4
  br label %23

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef %17) #13
  br label %81

23:                                               ; preds = %19, %10
  %24 = phi ptr [ %20, %19 ], [ %13, %10 ]
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.elan_transport_ops, ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %24, ptr noundef %4) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.elan_transport_ops, ptr %31, i32 0, i32 22
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = tail call i32 %33(ptr noundef %34, ptr noundef %5) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %30
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.elan_transport_ops, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %0, align 4
  %42 = load i8, ptr %5, align 4
  %43 = tail call i32 %40(ptr noundef %41, i8 noundef zeroext %42, ptr noundef %6, ptr noundef %7, ptr noundef %8) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %37
  %46 = load i16, ptr %6, align 2
  switch i16 %46, label %61 [
    i16 14, label %47
    i16 8, label %49
  ]

47:                                               ; preds = %45
  %48 = load i16, ptr %4, align 2
  switch i16 %48, label %61 [
    i16 9, label %52
    i16 19, label %52
    i16 5, label %52
    i16 6, label %52
    i16 7, label %52
  ]

49:                                               ; preds = %45
  %50 = load i16, ptr %4, align 2
  %51 = icmp eq i16 %50, 38
  br i1 %51, label %52, label %61

52:                                               ; preds = %49, %47, %47, %47, %47, %47
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.elan_transport_ops, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %13, i1 noundef zeroext false) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15, i32 noundef %56) #13
  br label %81

60:                                               ; preds = %52
  tail call void @msleep(i32 noundef 200) #12
  br label %61

61:                                               ; preds = %60, %49, %47, %45
  %62 = phi i1 [ false, %60 ], [ true, %45 ], [ true, %47 ], [ true, %49 ]
  %63 = load i8, ptr %9, align 4
  %64 = or i8 %63, 1
  store i8 %64, ptr %9, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.elan_transport_ops, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %13, i8 noundef zeroext %64) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.16, i32 noundef %68) #13
  br label %81

72:                                               ; preds = %61
  br i1 %62, label %73, label %85

73:                                               ; preds = %72
  %74 = load ptr, ptr %3, align 4
  %75 = getelementptr inbounds %struct.elan_transport_ops, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %13, i1 noundef zeroext false) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.15, i32 noundef %77) #13
  br label %81

81:                                               ; preds = %79, %70, %58, %37, %30, %23, %21
  %82 = phi i32 [ %28, %23 ], [ %35, %30 ], [ %43, %37 ], [ %17, %21 ], [ %77, %79 ], [ %68, %70 ], [ %56, %58 ]
  tail call void @msleep(i32 noundef 30) #12
  %83 = add nsw i32 %12, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %10

85:                                               ; preds = %81, %73, %72
  %86 = phi i32 [ %82, %81 ], [ 0, %72 ], [ 0, %73 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_query_device_info(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.elan_transport_ops, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 16
  %10 = tail call i32 %5(ptr noundef %6, i8 noundef zeroext %8, i1 noundef zeroext false, ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %67

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.elan_transport_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 19
  %18 = tail call i32 %15(ptr noundef %16, i1 noundef zeroext false, ptr noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %12
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.elan_transport_ops, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = load i8, ptr %7, align 4
  %26 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 18
  %27 = tail call i32 %23(ptr noundef %24, i8 noundef zeroext %25, i1 noundef zeroext true, ptr noundef %26) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %20
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.elan_transport_ops, ptr %30, i32 0, i32 21
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 22
  %35 = tail call i32 %32(ptr noundef %33, ptr noundef %34) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %29
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.elan_transport_ops, ptr %38, i32 0, i32 19
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %0, align 4
  %42 = load i8, ptr %7, align 4
  %43 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 20
  %44 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 21
  %45 = tail call i32 %40(ptr noundef %41, i8 noundef zeroext %42, ptr noundef %43, ptr noundef %44) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 24
  %49 = load i16, ptr %48, align 2
  %50 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 15
  %51 = load i16, ptr %50, align 2
  %52 = tail call fastcc i32 @elan_i2c_lookup_quirks(i16 noundef zeroext %49, i16 noundef zeroext %51)
  %53 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 34
  store i32 %52, ptr %53, align 4
  %54 = load i8, ptr %26, align 2
  %55 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 25
  %56 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 27
  %57 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 26
  %58 = tail call fastcc i32 @elan_get_fwinfo(i16 noundef zeroext %49, i8 noundef zeroext %54, ptr noundef %55, ptr noundef %56, ptr noundef %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %47
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  %63 = load i8, ptr %26, align 2
  %64 = zext i8 %63 to i32
  %65 = load i16, ptr %48, align 2
  %66 = zext i16 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.17, i32 noundef %64, i32 noundef %66) #13
  br label %67

67:                                               ; preds = %60, %47, %37, %29, %20, %12, %1
  %68 = phi i32 [ %10, %1 ], [ %18, %12 ], [ %27, %20 ], [ %35, %29 ], [ %45, %37 ], [ 0, %60 ], [ 0, %47 ]
  ret i32 %68
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_setup_input_device(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %9 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %10 = tail call ptr @devm_input_allocate_device(ptr noundef %3) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %96, label %12

12:                                               ; preds = %1
  store ptr @.str.26, ptr %10, align 8
  %13 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 3
  store i16 24, ptr %13, align 4
  %14 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 3, i32 1
  store i16 1267, ptr %14, align 2
  %15 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 15
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 3, i32 2
  store i16 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40, i32 8
  store ptr %0, ptr %18, align 8
  %19 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %10, i32 noundef 5, i32 noundef 5) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %19) #13
  br label %96

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 8
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 32
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = or i32 %27, 5
  store i32 %33, ptr %26, align 4
  %34 = getelementptr %struct.input_dev, ptr %10, i32 0, i32 6, i32 8
  %35 = load i32, ptr %34, align 4
  br label %45

36:                                               ; preds = %22
  %37 = getelementptr %struct.input_dev, ptr %10, i32 0, i32 6, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, 131072
  store i32 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 33
  %41 = load i8, ptr %40, align 1, !range !9
  %42 = icmp eq i8 %41, 0
  %43 = or i32 %38, 393216
  %44 = select i1 %42, i32 %39, i32 %43
  br label %45

45:                                               ; preds = %36, %32
  %46 = phi i32 [ %35, %32 ], [ %44, %36 ]
  %47 = getelementptr %struct.input_dev, ptr %10, i32 0, i32 6, i32 8
  %48 = or i32 %46, 65536
  store i32 %48, ptr %47, align 4
  %49 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i32 noundef %50, i32 noundef 0, i32 noundef 0) #12
  %51 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0, i32 noundef %52, i32 noundef 0, i32 noundef 0) #12
  %53 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %10) #12
  %55 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 26
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %45
  %59 = getelementptr %struct.input_absinfo, ptr %56, i32 0, i32 5
  store i32 %54, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %45
  %61 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 13
  %62 = load i32, ptr %61, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %10) #12
  %63 = load ptr, ptr %55, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = getelementptr %struct.input_absinfo, ptr %63, i32 1, i32 5
  store i32 %62, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %60
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  %68 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 20
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #12
  br label %73

73:                                               ; preds = %72, %67
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 25, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %74 = load i32, ptr %49, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 53, i32 noundef 0, i32 noundef %74, i32 noundef 0, i32 noundef 0) #12
  %75 = load i32, ptr %51, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 54, i32 noundef 0, i32 noundef %75, i32 noundef 0, i32 noundef 0) #12
  %76 = load i32, ptr %53, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %10) #12
  %77 = load ptr, ptr %55, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = getelementptr %struct.input_absinfo, ptr %77, i32 53, i32 5
  store i32 %76, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, ptr %61, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %10) #12
  %83 = load ptr, ptr %55, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = getelementptr %struct.input_absinfo, ptr %83, i32 54, i32 5
  store i32 %82, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %81
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  %88 = load i32, ptr %68, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = mul i32 %8, 15
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 48, i32 noundef 0, i32 noundef %92, i32 noundef 0, i32 noundef 0) #12
  %93 = mul i32 %9, 15
  tail call void @input_set_abs_params(ptr noundef nonnull %10, i32 noundef 49, i32 noundef 0, i32 noundef %93, i32 noundef 0, i32 noundef 0) #12
  br label %94

94:                                               ; preds = %91, %87
  %95 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 1
  store ptr %10, ptr %95, align 4
  br label %96

96:                                               ; preds = %94, %21, %1
  %97 = phi i32 [ %19, %21 ], [ 0, %94 ], [ -12, %1 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_setup_trackpoint_input_device(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %4 = tail call ptr @devm_input_allocate_device(ptr noundef %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  store ptr @.str.28, ptr %4, align 8
  %7 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3
  store i16 24, ptr %7, align 4
  %8 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, i32 1
  store i16 1267, ptr %8, align 2
  %9 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 15
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, i32 2
  store i16 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 40, i32 8
  store ptr %0, ptr %12, align 8
  tail call void @input_set_capability(ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef nonnull %4, i32 noundef 2, i32 noundef 1) #12
  tail call void @input_set_capability(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 274) #12
  %13 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 33
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 2
  store ptr %4, ptr %16, align 4
  br label %17

17:                                               ; preds = %6, %1
  %18 = phi i32 [ 0, %6 ], [ -12, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [39 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %3, i8 0, i32 39, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %8) #12
  br label %77

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.elan_transport_ops, ptr %11, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = call i32 %13(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %77

19:                                               ; preds = %9
  %20 = getelementptr inbounds [39 x i8], ptr %3, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  switch i8 %21, label %73 [
    i8 93, label %22
    i8 96, label %23
    i8 94, label %24
    i8 95, label %24
  ]

22:                                               ; preds = %19
  call fastcc void @elan_report_absolute(ptr noundef %1, ptr noundef nonnull %3, i1 noundef zeroext false)
  br label %77

23:                                               ; preds = %19
  call fastcc void @elan_report_absolute(ptr noundef %1, ptr noundef nonnull %3, i1 noundef zeroext true)
  br label %77

24:                                               ; preds = %19, %19
  %25 = getelementptr inbounds %struct.elan_tp_data, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void @pm_wakeup_dev_event(ptr noundef %28, i32 noundef 0, i1 noundef zeroext false) #12
  %29 = load ptr, ptr %25, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i1, ptr @elan_report_trackpoint.__print_once, align 1
  br i1 %32, label %77, label %33

33:                                               ; preds = %31
  store i1 true, ptr @elan_report_trackpoint.__print_once, align 1
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.30) #13
  br label %77

36:                                               ; preds = %24
  %37 = getelementptr inbounds i8, ptr %3, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 1
  %40 = zext i8 %39 to i32
  call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 272, i32 noundef %40) #12
  %41 = load i8, ptr %37, align 1
  %42 = lshr i8 %41, 1
  %43 = and i8 %42, 1
  %44 = zext i8 %43 to i32
  call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 273, i32 noundef %44) #12
  %45 = load i8, ptr %37, align 1
  %46 = lshr i8 %45, 2
  %47 = and i8 %46, 1
  %48 = zext i8 %47 to i32
  call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 274, i32 noundef %48) #12
  %49 = getelementptr inbounds i8, ptr %3, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 15
  %52 = icmp eq i8 %51, 6
  br i1 %52, label %53, label %72

53:                                               ; preds = %36
  %54 = getelementptr inbounds i8, ptr %3, i32 7
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %3, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = xor i8 %58, -128
  %60 = zext i8 %59 to i32
  %61 = mul nsw i32 %60, -2
  %62 = add nsw i32 %61, %56
  %63 = getelementptr inbounds i8, ptr %3, i32 5
  %64 = load i8, ptr %63, align 1
  %65 = xor i8 %64, -128
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 1
  %68 = getelementptr inbounds i8, ptr %3, i32 8
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %67, %70
  call void @input_event(ptr noundef %26, i32 noundef 2, i32 noundef 0, i32 noundef %62) #12
  call void @input_event(ptr noundef %26, i32 noundef 2, i32 noundef 1, i32 noundef %71) #12
  br label %72

72:                                               ; preds = %53, %36
  call void @input_event(ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %77

73:                                               ; preds = %19
  %74 = zext i8 %21 to i32
  %75 = load ptr, ptr %1, align 4
  %76 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.29, i32 noundef %74) #13
  br label %77

77:                                               ; preds = %73, %72, %33, %31, %23, %22, %9, %7
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %3) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal fastcc i32 @elan_i2c_lookup_quirks(i16 noundef zeroext %0, i16 noundef zeroext %1) unnamed_addr #5 {
  switch i16 %0, label %12 [
    i16 13, label %3
    i16 16, label %7
    i16 20, label %9
  ]

3:                                                ; preds = %2
  %4 = icmp eq i16 %1, 194
  %5 = icmp eq i16 %1, 184
  %6 = or i1 %4, %5
  br label %12

7:                                                ; preds = %2
  %8 = icmp eq i16 %1, 191
  br label %12

9:                                                ; preds = %2
  %10 = and i16 %1, -2
  %11 = icmp eq i16 %10, 288
  br label %12

12:                                               ; preds = %9, %7, %3, %2
  %13 = phi i1 [ %8, %7 ], [ false, %2 ], [ %6, %3 ], [ %11, %9 ]
  %14 = icmp ugt i16 %0, 12
  %15 = icmp ugt i16 %1, 290
  %16 = and i1 %14, %15
  %17 = or i1 %13, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @elan_get_fwinfo(i16 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #6 {
  switch i16 %0, label %12 [
    i16 0, label %16
    i16 6, label %16
    i16 8, label %16
    i16 3, label %6
    i16 7, label %6
    i16 9, label %6
    i16 10, label %6
    i16 11, label %6
    i16 12, label %6
    i16 13, label %13
    i16 14, label %7
    i16 16, label %8
    i16 17, label %9
    i16 19, label %10
    i16 20, label %11
    i16 21, label %11
  ]

6:                                                ; preds = %5, %5, %5, %5, %5, %5
  br label %16

7:                                                ; preds = %5
  br label %13

8:                                                ; preds = %5
  br label %13

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5, %5
  br label %16

12:                                               ; preds = %5
  store i16 0, ptr %2, align 2
  store i32 0, ptr %3, align 4
  br label %33

13:                                               ; preds = %10, %9, %8, %7, %5
  %14 = phi i16 [ 2048, %10 ], [ 1280, %9 ], [ 1024, %8 ], [ 640, %7 ], [ 896, %5 ]
  %15 = phi i32 [ 131066, %10 ], [ 81914, %9 ], [ 65530, %8 ], [ 40954, %7 ], [ 57338, %5 ]
  store i16 %14, ptr %2, align 2
  store i32 %15, ptr %3, align 4
  br label %26

16:                                               ; preds = %11, %6, %5, %5, %5
  %17 = phi i16 [ 1024, %11 ], [ 768, %6 ], [ 512, %5 ], [ 512, %5 ], [ 512, %5 ]
  %18 = phi i32 [ 65530, %11 ], [ 49146, %6 ], [ 32762, %5 ], [ 32762, %5 ], [ 32762, %5 ]
  store i16 %17, ptr %2, align 2
  store i32 %18, ptr %3, align 4
  %19 = and i16 %0, -2
  %20 = icmp eq i16 %19, 20
  %21 = icmp ugt i8 %1, 1
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i16, ptr %2, align 2
  %25 = lshr i16 %24, 3
  store i16 %25, ptr %2, align 2
  br label %33

26:                                               ; preds = %16, %13
  %27 = icmp ugt i16 %0, 12
  %28 = icmp ne i8 %1, 0
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i16, ptr %2, align 2
  %32 = lshr i16 %31, 1
  store i16 %32, ptr %2, align 2
  br label %33

33:                                               ; preds = %30, %26, %23, %12
  %34 = phi i16 [ 512, %23 ], [ 128, %30 ], [ 0, %12 ], [ 64, %26 ]
  %35 = phi i32 [ 0, %23 ], [ 0, %30 ], [ -6, %12 ], [ 0, %26 ]
  store i16 %34, ptr %4, align 2
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @elan_report_absolute(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 4
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr i8, ptr %1, i32 30
  %10 = load i8, ptr %9, align 1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void @pm_wakeup_dev_event(ptr noundef %12, i32 noundef 0, i1 noundef zeroext false) #12
  %13 = zext i8 %8 to i32
  %14 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 22
  %17 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 20
  %18 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 10
  %19 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 11
  br label %20

20:                                               ; preds = %91, %3
  %21 = phi i32 [ 0, %3 ], [ %94, %91 ]
  %22 = phi ptr [ %6, %3 ], [ %93, %91 ]
  %23 = shl i32 8, %21
  %24 = and i32 %23, %13
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %4, align 4
  br i1 %25, label %89, label %27

27:                                               ; preds = %20
  br i1 %2, label %28, label %36

28:                                               ; preds = %27
  %29 = load i16, ptr %22, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #12
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %22, i32 2
  %33 = load i16, ptr %32, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #12
  %35 = zext i16 %34 to i32
  br label %51

36:                                               ; preds = %27
  %37 = load i8, ptr %22, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 4
  %40 = and i32 %39, 3840
  %41 = getelementptr i8, ptr %22, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = shl nuw nsw i32 %38, 8
  %46 = and i32 %45, 3840
  %47 = getelementptr i8, ptr %22, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %46, %49
  br label %51

51:                                               ; preds = %36, %28
  %52 = phi i32 [ %35, %28 ], [ %50, %36 ]
  %53 = phi i32 [ %31, %28 ], [ %44, %36 ]
  %54 = load i32, ptr %14, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %91, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %15, align 4
  %58 = icmp ugt i32 %52, %57
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %22, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, ptr %16, align 4
  %64 = add i32 %63, %62
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 255) #12
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 47, i32 noundef %21) #12
  %66 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %26, i32 noundef 0, i1 noundef zeroext true) #12
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 53, i32 noundef %53) #12
  %67 = load i32, ptr %15, align 4
  %68 = sub i32 %67, %52
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 54, i32 noundef %68) #12
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 58, i32 noundef %65) #12
  %69 = load i32, ptr %17, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %59
  %73 = add nuw nsw i32 %21, 33
  %74 = getelementptr i8, ptr %1, i32 %73
  %75 = getelementptr i8, ptr %22, i32 3
  %76 = select i1 %2, ptr %74, ptr %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 15
  %80 = lshr i32 %78, 4
  %81 = load i32, ptr %18, align 4
  %82 = add i32 %81, -90
  %83 = mul i32 %79, %82
  %84 = load i32, ptr %19, align 4
  %85 = add i32 %84, -90
  %86 = mul i32 %85, %80
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 28, i32 noundef %79) #12
  %87 = tail call i32 @llvm.umax.i32(i32 %83, i32 %86) #12
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 48, i32 noundef %87) #12
  %88 = tail call i32 @llvm.umin.i32(i32 %83, i32 %86) #12
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 49, i32 noundef %88) #12
  br label %91

89:                                               ; preds = %20
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 47, i32 noundef %21) #12
  %90 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %26, i32 noundef 0, i1 noundef zeroext false) #12
  br label %91

91:                                               ; preds = %89, %72, %59, %56, %51
  %92 = phi i32 [ 5, %51 ], [ 5, %56 ], [ 5, %59 ], [ 5, %72 ], [ 0, %89 ]
  %93 = getelementptr i8, ptr %22, i32 %92
  %94 = add nuw nsw i32 %21, 1
  %95 = icmp eq i32 %94, 5
  br i1 %95, label %96, label %20

96:                                               ; preds = %91
  %97 = and i32 %13, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %97) #12
  %98 = lshr i32 %13, 2
  %99 = and i32 %98, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %99) #12
  %100 = lshr i32 %13, 1
  %101 = and i32 %100, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %101) #12
  %102 = lshr i8 %10, 6
  %103 = and i8 %102, 1
  %104 = zext i8 %103 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 25, i32 noundef %104) #12
  tail call void @input_mt_report_pointer_emulation(ptr noundef %5, i1 noundef zeroext true) #12
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_product_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 15
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_fw_ver(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 16
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_sm_ver(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 17
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_iap_ver(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 18
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_fw_checksum(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 19
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @calibrate_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.elan_tp_data, ptr %8, i32 0, i32 7
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %0, i32 476
  %14 = load i32, ptr %13, align 4
  tail call void @disable_irq(i32 noundef %14) #12
  %15 = getelementptr inbounds %struct.elan_tp_data, ptr %8, i32 0, i32 23
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 2
  store i8 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.elan_tp_data, ptr %8, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.elan_transport_ops, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %6, i8 noundef zeroext %17) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %22) #13
  br label %61

25:                                               ; preds = %12
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.elan_transport_ops, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %6) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %29) #13
  br label %48

32:                                               ; preds = %25
  store i8 -1, ptr %5, align 1
  br label %33

33:                                               ; preds = %44, %32
  %34 = phi i32 [ 20, %32 ], [ %45, %44 ]
  call void @msleep(i32 noundef 250) #12
  %35 = load ptr, ptr %18, align 4
  %36 = getelementptr inbounds %struct.elan_transport_ops, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %6, ptr noundef nonnull %5) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %38) #13
  br label %44

41:                                               ; preds = %33
  %42 = load i8, ptr %5, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41, %40
  %45 = add nsw i32 %34, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %33

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42) #13
  br label %48

48:                                               ; preds = %47, %41, %31
  %49 = phi i32 [ %29, %31 ], [ -110, %47 ], [ 0, %41 ]
  %50 = load i8, ptr %15, align 4
  %51 = and i8 %50, -3
  store i8 %51, ptr %15, align 4
  %52 = load ptr, ptr %18, align 4
  %53 = getelementptr inbounds %struct.elan_transport_ops, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = call i32 %54(ptr noundef %55, i8 noundef zeroext %51) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %56) #13
  %59 = icmp eq i32 %49, 0
  %60 = select i1 %59, i32 %56, i32 %49
  br label %61

61:                                               ; preds = %58, %48, %24
  %62 = phi i32 [ %22, %24 ], [ %49, %48 ], [ %60, %58 ]
  %63 = load i32, ptr %13, align 4
  call void @enable_irq(i32 noundef %63) #12
  call void @mutex_unlock(ptr noundef %9) #12
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 %3, i32 %62
  br label %66

66:                                               ; preds = %61, %4
  %67 = phi i32 [ %65, %61 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #12
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_read_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 7
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.elan_transport_ops, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = call i32 %14(ptr noundef %15, ptr noundef nonnull %4) #12
  call void @mutex_unlock(ptr noundef %7) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, ptr %4, align 4
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef %19)
  br label %21

21:                                               ; preds = %18, %10, %3
  %22 = phi i32 [ %20, %18 ], [ %8, %3 ], [ %16, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_sysfs_update_fw(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.elan_tp_data, ptr %7, i32 0, i32 25
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.elan_tp_data, ptr %7, i32 0, i32 15
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.47, i32 noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.48) #13
  br label %45

18:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull %15) #13
  %19 = call i32 @request_firmware(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef %0) #12
  call void @kfree(ptr noundef nonnull %15) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %19) #13
  br label %45

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.elan_tp_data, ptr %7, i32 0, i32 27
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = call i32 @bcmp(ptr noundef dereferenceable(6) %28, ptr noundef nonnull dereferenceable(6) @elan_sysfs_update_fw.signature, i32 6)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef 6, ptr noundef nonnull @elan_sysfs_update_fw.signature, i32 noundef 6, ptr noundef %28) #13
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.elan_tp_data, ptr %7, i32 0, i32 7
  %34 = call i32 @mutex_lock_interruptible(ptr noundef %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ %34, %32 ], [ -9, %31 ]
  %38 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %38) #12
  br label %45

39:                                               ; preds = %32
  %40 = load ptr, ptr %5, align 4
  %41 = call fastcc i32 @elan_update_firmware(ptr noundef %7, ptr noundef %40)
  call void @mutex_unlock(ptr noundef %33) #12
  %42 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %42) #12
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %43, i32 %3, i32 %41
  br label %45

45:                                               ; preds = %39, %36, %21, %17, %4
  %46 = phi i32 [ %19, %21 ], [ -12, %17 ], [ -22, %4 ], [ %37, %36 ], [ %44, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_update_firmware(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i16, align 2
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  tail call void @disable_irq(i32 noundef %6) #12
  %7 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 6
  store i8 1, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %10 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.elan_transport_ops, ptr %11, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 24
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 18
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 26
  %19 = load i16, ptr %18, align 2
  %20 = tail call i32 %13(ptr noundef %8, i16 noundef zeroext %15, i8 noundef zeroext %17, i16 noundef zeroext %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %115

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 262
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %26 to i32
  %28 = shl nuw nsw i32 %27, 1
  %29 = load i16, ptr %18, align 2
  %30 = zext i16 %29 to i32
  %31 = udiv i32 %28, %30
  %32 = and i32 %31, 65535
  %33 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 25
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %92, %22
  %38 = phi i16 [ %94, %92 ], [ %29, %22 ]
  %39 = phi ptr [ %93, %92 ], [ %24, %22 ]
  %40 = phi i16 [ %87, %92 ], [ 0, %22 ]
  %41 = phi i32 [ %88, %92 ], [ %32, %22 ]
  %42 = zext i16 %38 to i32
  %43 = mul i32 %41, %42
  %44 = getelementptr i8, ptr %39, i32 %43
  %45 = icmp eq i16 %38, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %46, %37
  %47 = phi i16 [ %58, %46 ], [ 0, %37 ]
  %48 = phi i32 [ %59, %46 ], [ 0, %37 ]
  %49 = or i32 %48, 1
  %50 = getelementptr i8, ptr %44, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i16
  %53 = shl nuw i16 %52, 8
  %54 = getelementptr i8, ptr %44, i32 %48
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i16
  %57 = or i16 %53, %56
  %58 = add i16 %57, %47
  %59 = add nuw nsw i32 %48, 2
  %60 = icmp ult i32 %59, %42
  br i1 %60, label %46, label %61

61:                                               ; preds = %46, %37
  %62 = phi i16 [ 0, %37 ], [ %58, %46 ]
  %63 = load ptr, ptr %10, align 4
  %64 = getelementptr inbounds %struct.elan_transport_ops, ptr %63, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %0, align 4
  %67 = tail call i32 %65(ptr noundef %66, i16 noundef zeroext %38, ptr noundef %44, i16 noundef zeroext %62, i32 noundef %41) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %61
  %70 = load ptr, ptr %10, align 4
  %71 = getelementptr inbounds %struct.elan_transport_ops, ptr %70, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %0, align 4
  %74 = tail call i32 %72(ptr noundef %73, i16 noundef zeroext %38, ptr noundef %44, i16 noundef zeroext %62, i32 noundef %41) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr %10, align 4
  %78 = getelementptr inbounds %struct.elan_transport_ops, ptr %77, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %0, align 4
  %81 = tail call i32 %79(ptr noundef %80, i16 noundef zeroext %38, ptr noundef %44, i16 noundef zeroext %62, i32 noundef %41) #12
  br label %82

82:                                               ; preds = %76, %69, %61
  %83 = phi i32 [ %67, %61 ], [ %74, %69 ], [ %81, %76 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %41, i32 noundef %83) #13
  br label %115

86:                                               ; preds = %82
  %87 = add i16 %62, %40
  %88 = add nuw nsw i32 %41, 1
  %89 = load i16, ptr %33, align 4
  %90 = zext i16 %89 to i32
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load ptr, ptr %23, align 4
  %94 = load i16, ptr %18, align 2
  br label %37

95:                                               ; preds = %86, %22
  %96 = phi i16 [ 0, %22 ], [ %87, %86 ]
  tail call void @msleep(i32 noundef 600) #12
  %97 = load ptr, ptr %10, align 4
  %98 = getelementptr inbounds %struct.elan_transport_ops, ptr %97, i32 0, i32 18
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 5
  %101 = tail call i32 %99(ptr noundef %8, ptr noundef %100) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load ptr, ptr %10, align 4
  %105 = getelementptr inbounds %struct.elan_transport_ops, ptr %104, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 %106(ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull %3) #12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i16, ptr %3, align 2
  %111 = icmp eq i16 %96, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %109
  %113 = zext i16 %110 to i32
  %114 = zext i16 %96 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef %114, i32 noundef %113) #13
  br label %115

115:                                              ; preds = %112, %103, %95, %85, %2
  %116 = phi i32 [ %107, %103 ], [ %101, %95 ], [ %20, %2 ], [ -5, %112 ], [ %83, %85 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %117 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.52, i32 noundef %116) #13
  %118 = load ptr, ptr %10, align 4
  %119 = getelementptr inbounds %struct.elan_transport_ops, ptr %118, i32 0, i32 15
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 %120(ptr noundef %4) #12
  br label %125

122:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %123 = call fastcc i32 @elan_initialize(ptr noundef %0, i1 noundef zeroext false)
  %124 = call fastcc i32 @elan_query_device_info(ptr noundef %0)
  br label %125

125:                                              ; preds = %122, %115
  %126 = phi i32 [ 0, %122 ], [ %116, %115 ]
  store i8 0, ptr %7, align 4
  %127 = load i32, ptr %5, align 4
  call void @enable_irq(i32 noundef %127) #12
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @acquire_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 7
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 476
  %12 = load i32, ptr %11, align 4
  tail call void @disable_irq(i32 noundef %12) #12
  %13 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 31
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 23
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 2
  store i8 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.elan_transport_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = tail call i32 %20(ptr noundef %21, i8 noundef zeroext %16) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %22) #13
  br label %57

25:                                               ; preds = %10
  tail call void @msleep(i32 noundef 250) #12
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.elan_transport_ops, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 30
  %31 = tail call i32 %28(ptr noundef %29, i1 noundef zeroext true, ptr noundef %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %31) #13
  br label %44

34:                                               ; preds = %25
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr inbounds %struct.elan_transport_ops, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.elan_tp_data, ptr %6, i32 0, i32 29
  %40 = tail call i32 %37(ptr noundef %38, i1 noundef zeroext false, ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %40) #13
  br label %44

43:                                               ; preds = %34
  store i8 1, ptr %13, align 1
  br label %44

44:                                               ; preds = %43, %42, %33
  %45 = phi i32 [ %31, %33 ], [ %40, %42 ], [ 0, %43 ]
  %46 = load i8, ptr %14, align 4
  %47 = and i8 %46, -3
  store i8 %47, ptr %14, align 4
  %48 = load ptr, ptr %17, align 4
  %49 = getelementptr inbounds %struct.elan_transport_ops, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %6, align 4
  %52 = tail call i32 %50(ptr noundef %51, i8 noundef zeroext %47) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %52) #13
  %55 = icmp eq i32 %45, 0
  %56 = select i1 %55, i32 %52, i32 %45
  br label %57

57:                                               ; preds = %54, %44, %24
  %58 = phi i32 [ %22, %24 ], [ %45, %44 ], [ %56, %54 ]
  %59 = load i32, ptr %11, align 4
  tail call void @enable_irq(i32 noundef %59) #12
  tail call void @mutex_unlock(ptr noundef %7) #12
  %60 = icmp eq i32 %58, 0
  %61 = select i1 %60, i32 %3, i32 %58
  br label %62

62:                                               ; preds = %57, %4
  %63 = phi i32 [ %61, %57 ], [ %8, %4 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 7
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 31
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 29
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.62, i32 noundef %16)
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %17, %13 ], [ -61, %9 ]
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i32 [ %19, %18 ], [ %7, %3 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 7
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 31
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.elan_tp_data, ptr %5, i32 0, i32 30
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.62, i32 noundef %16)
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %17, %13 ], [ -61, %9 ]
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i32 [ %19, %18 ], [ %7, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 7
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 476
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #12
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.elan_transport_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = tail call i32 %22(ptr noundef %23, i1 noundef zeroext true) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %18
  tail call void @msleep(i32 noundef 30) #12
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr inbounds %struct.elan_transport_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %3, align 4
  %31 = tail call i32 %29(ptr noundef %30, i1 noundef zeroext true) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  tail call void @msleep(i32 noundef 30) #12
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr inbounds %struct.elan_transport_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = tail call i32 %36(ptr noundef %37, i1 noundef zeroext true) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  tail call void @msleep(i32 noundef 30) #12
  br label %41

41:                                               ; preds = %40, %33, %26, %18
  %42 = phi i32 [ 0, %18 ], [ 0, %26 ], [ 0, %33 ], [ %38, %40 ]
  %43 = load i32, ptr %8, align 4
  %44 = tail call i32 @irq_set_irq_wake(i32 noundef %43, i32 noundef 1) #12
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 28
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 4
  br label %58

48:                                               ; preds = %14, %7
  %49 = tail call fastcc i32 @elan_set_power(ptr noundef %3, i1 noundef zeroext false)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @regulator_disable(ptr noundef %53) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %54) #13
  %57 = tail call fastcc i32 @elan_set_power(ptr noundef %3, i1 noundef zeroext true)
  br label %58

58:                                               ; preds = %56, %51, %48, %41
  %59 = phi i32 [ %42, %41 ], [ %49, %48 ], [ %54, %56 ], [ 0, %51 ]
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %60

60:                                               ; preds = %58, %1
  %61 = phi i32 [ %59, %58 ], [ %5, %1 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elan_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regulator_enable(ptr noundef %14) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %15) #13
  br label %38

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 28
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 476
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 0) #12
  store i8 0, ptr %19, align 4
  br label %26

26:                                               ; preds = %22, %18, %12
  %27 = tail call fastcc i32 @elan_set_power(ptr noundef %3, i1 noundef zeroext true)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %27) #13
  br label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.elan_tp_data, ptr %3, i32 0, i32 34
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  %35 = tail call fastcc i32 @elan_initialize(ptr noundef %3, i1 noundef zeroext %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %35) #13
  br label %38

38:                                               ; preds = %37, %30, %29, %17
  %39 = phi i32 [ %27, %29 ], [ %35, %37 ], [ 0, %30 ], [ %15, %17 ]
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  tail call void @enable_irq(i32 noundef %42) #12
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elan_set_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.elan_tp_data, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elan_transport_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 %6(ptr noundef %7, i1 noundef zeroext %1) #12
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  tail call void @msleep(i32 noundef 30) #12
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.elan_transport_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = tail call i32 %13(ptr noundef %14, i1 noundef zeroext %1) #12
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  tail call void @msleep(i32 noundef 30) #12
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.elan_transport_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 %20(ptr noundef %21, i1 noundef zeroext %1) #12
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  tail call void @msleep(i32 noundef 30) #12
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %27 = select i1 %1, ptr @.str.66, ptr @.str.67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.65, ptr noundef nonnull %27, i32 noundef %22) #13
  br label %28

28:                                               ; preds = %24, %17, %10, %2
  %29 = phi i32 [ %22, %24 ], [ 0, %17 ], [ 0, %10 ], [ 0, %2 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
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
