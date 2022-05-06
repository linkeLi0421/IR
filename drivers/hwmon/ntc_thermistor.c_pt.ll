; ModuleID = '/llk/IR/drivers/hwmon/ntc_thermistor.c_pt.bc'
source_filename = "../drivers/hwmon/ntc_thermistor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.ntc_type = type { ptr, i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.ntc_compensation = type { i32, i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.ntc_data = type { ptr, i32, i32, i32, i32, i32, ptr }

@ntc_match = internal constant [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epcos,b57330v2103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ntc_thermistor_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epcos,b57891s0103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp03wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp03wf104\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp15wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp15wl333\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp15xh103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp18wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,ncp21wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 192) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,1404-001221\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 216) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp03wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp15wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp15wl333\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp18wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ntc,ncp21wb473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ntc_thermistor_id, i64 192) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description166 = internal constant [34 x i8] c"description=NTC Thermistor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author167 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias169 = internal constant [30 x i8] c"alias=platform:ntc-thermistor\00", section ".modinfo", align 1
@ntc_thermistor_id = internal constant [11 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"b57330v2103\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"b57891s0103\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"ncp03wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ncp03wf104\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id { [20 x i8] c"ncp15wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ncp15wl333\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"ncp15xh103\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"ncp18wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ncp21wb473\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ssg1404_001221\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@ntc_thermistor_driver = internal global %struct.platform_driver { ptr @ntc_thermistor_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ntc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ntc_thermistor_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"ntc-thermistor\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Required data to use NTC driver not supplied.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unknown device type: %lu(%s)\0A\00", align 1
@ntc_type = internal unnamed_addr constant [6 x %struct.ntc_type] [%struct.ntc_type { ptr @b57330v2103, i32 34 }, %struct.ntc_type { ptr @b57891s0103, i32 43 }, %struct.ntc_type { ptr @ncpXXwb473, i32 34 }, %struct.ntc_type { ptr @ncpXXwf104, i32 34 }, %struct.ntc_type { ptr @ncpXXwl333, i32 34 }, %struct.ntc_type { ptr @ncpXXxh103, i32 34 }], align 4
@ntc_chip_info = internal constant %struct.hwmon_chip_info { ptr @ntc_hwmon_ops, ptr @ntc_info }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"unable to register as hwmon device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Thermistor type: %s successfully probed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"pullup-uv\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"pullup-uv not specified\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pullup-ohm\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pullup-ohm not specified\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"pulldown-ohm\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"pulldown-ohm not specified\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"connected-positive\00", align 1
@b57330v2103 = internal constant [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 190030 }, %struct.ntc_compensation { i32 -35, i32 145360 }, %struct.ntc_compensation { i32 -30, i32 112060 }, %struct.ntc_compensation { i32 -25, i32 87041 }, %struct.ntc_compensation { i32 -20, i32 68104 }, %struct.ntc_compensation { i32 -15, i32 53665 }, %struct.ntc_compensation { i32 -10, i32 42576 }, %struct.ntc_compensation { i32 -5, i32 34001 }, %struct.ntc_compensation { i32 0, i32 27326 }, %struct.ntc_compensation { i32 5, i32 22096 }, %struct.ntc_compensation { i32 10, i32 17973 }, %struct.ntc_compensation { i32 15, i32 14703 }, %struct.ntc_compensation { i32 20, i32 12090 }, %struct.ntc_compensation { i32 25, i32 10000 }, %struct.ntc_compensation { i32 30, i32 8311 }, %struct.ntc_compensation { i32 35, i32 6941 }, %struct.ntc_compensation { i32 40, i32 5825 }, %struct.ntc_compensation { i32 45, i32 4911 }, %struct.ntc_compensation { i32 50, i32 4158 }, %struct.ntc_compensation { i32 55, i32 3536 }, %struct.ntc_compensation { i32 60, i32 3019 }, %struct.ntc_compensation { i32 65, i32 2588 }, %struct.ntc_compensation { i32 70, i32 2227 }, %struct.ntc_compensation { i32 75, i32 1924 }, %struct.ntc_compensation { i32 80, i32 1668 }, %struct.ntc_compensation { i32 85, i32 1451 }, %struct.ntc_compensation { i32 90, i32 1266 }, %struct.ntc_compensation { i32 95, i32 1108 }, %struct.ntc_compensation { i32 100, i32 973 }, %struct.ntc_compensation { i32 105, i32 857 }, %struct.ntc_compensation { i32 110, i32 757 }, %struct.ntc_compensation { i32 115, i32 671 }, %struct.ntc_compensation { i32 120, i32 596 }, %struct.ntc_compensation { i32 125, i32 531 }], align 4
@b57891s0103 = internal constant [43 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -55, i32 878900 }, %struct.ntc_compensation { i32 -50, i32 617590 }, %struct.ntc_compensation { i32 -45, i32 439340 }, %struct.ntc_compensation { i32 -40, i32 316180 }, %struct.ntc_compensation { i32 -35, i32 230060 }, %struct.ntc_compensation { i32 -30, i32 169150 }, %struct.ntc_compensation { i32 -25, i32 125550 }, %struct.ntc_compensation { i32 -20, i32 94143 }, %struct.ntc_compensation { i32 -15, i32 71172 }, %struct.ntc_compensation { i32 -10, i32 54308 }, %struct.ntc_compensation { i32 -5, i32 41505 }, %struct.ntc_compensation { i32 0, i32 32014 }, %struct.ntc_compensation { i32 5, i32 25011 }, %struct.ntc_compensation { i32 10, i32 19691 }, %struct.ntc_compensation { i32 15, i32 15618 }, %struct.ntc_compensation { i32 20, i32 12474 }, %struct.ntc_compensation { i32 25, i32 10000 }, %struct.ntc_compensation { i32 30, i32 8080 }, %struct.ntc_compensation { i32 35, i32 6569 }, %struct.ntc_compensation { i32 40, i32 5372 }, %struct.ntc_compensation { i32 45, i32 4424 }, %struct.ntc_compensation { i32 50, i32 3661 }, %struct.ntc_compensation { i32 55, i32 3039 }, %struct.ntc_compensation { i32 60, i32 2536 }, %struct.ntc_compensation { i32 65, i32 2128 }, %struct.ntc_compensation { i32 70, i32 1794 }, %struct.ntc_compensation { i32 75, i32 1518 }, %struct.ntc_compensation { i32 80, i32 1290 }, %struct.ntc_compensation { i32 85, i32 1100 }, %struct.ntc_compensation { i32 90, i32 942 }, %struct.ntc_compensation { i32 95, i32 809 }, %struct.ntc_compensation { i32 100, i32 697 }, %struct.ntc_compensation { i32 105, i32 604 }, %struct.ntc_compensation { i32 110, i32 525 }, %struct.ntc_compensation { i32 115, i32 457 }, %struct.ntc_compensation { i32 120, i32 400 }, %struct.ntc_compensation { i32 125, i32 351 }, %struct.ntc_compensation { i32 130, i32 308 }, %struct.ntc_compensation { i32 135, i32 272 }, %struct.ntc_compensation { i32 140, i32 240 }, %struct.ntc_compensation { i32 145, i32 213 }, %struct.ntc_compensation { i32 150, i32 189 }, %struct.ntc_compensation { i32 155, i32 168 }], align 4
@ncpXXwb473 = internal constant [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 1747920 }, %struct.ntc_compensation { i32 -35, i32 1245428 }, %struct.ntc_compensation { i32 -30, i32 898485 }, %struct.ntc_compensation { i32 -25, i32 655802 }, %struct.ntc_compensation { i32 -20, i32 483954 }, %struct.ntc_compensation { i32 -15, i32 360850 }, %struct.ntc_compensation { i32 -10, i32 271697 }, %struct.ntc_compensation { i32 -5, i32 206463 }, %struct.ntc_compensation { i32 0, i32 158214 }, %struct.ntc_compensation { i32 5, i32 122259 }, %struct.ntc_compensation { i32 10, i32 95227 }, %struct.ntc_compensation { i32 15, i32 74730 }, %struct.ntc_compensation { i32 20, i32 59065 }, %struct.ntc_compensation { i32 25, i32 47000 }, %struct.ntc_compensation { i32 30, i32 37643 }, %struct.ntc_compensation { i32 35, i32 30334 }, %struct.ntc_compensation { i32 40, i32 24591 }, %struct.ntc_compensation { i32 45, i32 20048 }, %struct.ntc_compensation { i32 50, i32 16433 }, %struct.ntc_compensation { i32 55, i32 13539 }, %struct.ntc_compensation { i32 60, i32 11209 }, %struct.ntc_compensation { i32 65, i32 9328 }, %struct.ntc_compensation { i32 70, i32 7798 }, %struct.ntc_compensation { i32 75, i32 6544 }, %struct.ntc_compensation { i32 80, i32 5518 }, %struct.ntc_compensation { i32 85, i32 4674 }, %struct.ntc_compensation { i32 90, i32 3972 }, %struct.ntc_compensation { i32 95, i32 3388 }, %struct.ntc_compensation { i32 100, i32 2902 }, %struct.ntc_compensation { i32 105, i32 2494 }, %struct.ntc_compensation { i32 110, i32 2150 }, %struct.ntc_compensation { i32 115, i32 1860 }, %struct.ntc_compensation { i32 120, i32 1615 }, %struct.ntc_compensation { i32 125, i32 1406 }], align 4
@ncpXXwf104 = internal constant [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 4397119 }, %struct.ntc_compensation { i32 -35, i32 3088599 }, %struct.ntc_compensation { i32 -30, i32 2197225 }, %struct.ntc_compensation { i32 -25, i32 1581881 }, %struct.ntc_compensation { i32 -20, i32 1151037 }, %struct.ntc_compensation { i32 -15, i32 846579 }, %struct.ntc_compensation { i32 -10, i32 628988 }, %struct.ntc_compensation { i32 -5, i32 471632 }, %struct.ntc_compensation { i32 0, i32 357012 }, %struct.ntc_compensation { i32 5, i32 272500 }, %struct.ntc_compensation { i32 10, i32 209710 }, %struct.ntc_compensation { i32 15, i32 162651 }, %struct.ntc_compensation { i32 20, i32 127080 }, %struct.ntc_compensation { i32 25, i32 100000 }, %struct.ntc_compensation { i32 30, i32 79222 }, %struct.ntc_compensation { i32 35, i32 63167 }, %struct.ntc_compensation { i32 40, i32 50677 }, %struct.ntc_compensation { i32 45, i32 40904 }, %struct.ntc_compensation { i32 50, i32 33195 }, %struct.ntc_compensation { i32 55, i32 27091 }, %struct.ntc_compensation { i32 60, i32 22224 }, %struct.ntc_compensation { i32 65, i32 18323 }, %struct.ntc_compensation { i32 70, i32 15184 }, %struct.ntc_compensation { i32 75, i32 12635 }, %struct.ntc_compensation { i32 80, i32 10566 }, %struct.ntc_compensation { i32 85, i32 8873 }, %struct.ntc_compensation { i32 90, i32 7481 }, %struct.ntc_compensation { i32 95, i32 6337 }, %struct.ntc_compensation { i32 100, i32 5384 }, %struct.ntc_compensation { i32 105, i32 4594 }, %struct.ntc_compensation { i32 110, i32 3934 }, %struct.ntc_compensation { i32 115, i32 3380 }, %struct.ntc_compensation { i32 120, i32 2916 }, %struct.ntc_compensation { i32 125, i32 2522 }], align 4
@ncpXXwl333 = internal constant [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 1610154 }, %struct.ntc_compensation { i32 -35, i32 1130850 }, %struct.ntc_compensation { i32 -30, i32 802609 }, %struct.ntc_compensation { i32 -25, i32 575385 }, %struct.ntc_compensation { i32 -20, i32 416464 }, %struct.ntc_compensation { i32 -15, i32 304219 }, %struct.ntc_compensation { i32 -10, i32 224193 }, %struct.ntc_compensation { i32 -5, i32 166623 }, %struct.ntc_compensation { i32 0, i32 124850 }, %struct.ntc_compensation { i32 5, i32 94287 }, %struct.ntc_compensation { i32 10, i32 71747 }, %struct.ntc_compensation { i32 15, i32 54996 }, %struct.ntc_compensation { i32 20, i32 42455 }, %struct.ntc_compensation { i32 25, i32 33000 }, %struct.ntc_compensation { i32 30, i32 25822 }, %struct.ntc_compensation { i32 35, i32 20335 }, %struct.ntc_compensation { i32 40, i32 16115 }, %struct.ntc_compensation { i32 45, i32 12849 }, %struct.ntc_compensation { i32 50, i32 10306 }, %struct.ntc_compensation { i32 55, i32 8314 }, %struct.ntc_compensation { i32 60, i32 6746 }, %struct.ntc_compensation { i32 65, i32 5503 }, %struct.ntc_compensation { i32 70, i32 4513 }, %struct.ntc_compensation { i32 75, i32 3721 }, %struct.ntc_compensation { i32 80, i32 3084 }, %struct.ntc_compensation { i32 85, i32 2569 }, %struct.ntc_compensation { i32 90, i32 2151 }, %struct.ntc_compensation { i32 95, i32 1809 }, %struct.ntc_compensation { i32 100, i32 1529 }, %struct.ntc_compensation { i32 105, i32 1299 }, %struct.ntc_compensation { i32 110, i32 1108 }, %struct.ntc_compensation { i32 115, i32 949 }, %struct.ntc_compensation { i32 120, i32 817 }, %struct.ntc_compensation { i32 125, i32 707 }], align 4
@ncpXXxh103 = internal constant [34 x %struct.ntc_compensation] [%struct.ntc_compensation { i32 -40, i32 247565 }, %struct.ntc_compensation { i32 -35, i32 181742 }, %struct.ntc_compensation { i32 -30, i32 135128 }, %struct.ntc_compensation { i32 -25, i32 101678 }, %struct.ntc_compensation { i32 -20, i32 77373 }, %struct.ntc_compensation { i32 -15, i32 59504 }, %struct.ntc_compensation { i32 -10, i32 46222 }, %struct.ntc_compensation { i32 -5, i32 36244 }, %struct.ntc_compensation { i32 0, i32 28674 }, %struct.ntc_compensation { i32 5, i32 22878 }, %struct.ntc_compensation { i32 10, i32 18399 }, %struct.ntc_compensation { i32 15, i32 14910 }, %struct.ntc_compensation { i32 20, i32 12169 }, %struct.ntc_compensation { i32 25, i32 10000 }, %struct.ntc_compensation { i32 30, i32 8271 }, %struct.ntc_compensation { i32 35, i32 6883 }, %struct.ntc_compensation { i32 40, i32 5762 }, %struct.ntc_compensation { i32 45, i32 4851 }, %struct.ntc_compensation { i32 50, i32 4105 }, %struct.ntc_compensation { i32 55, i32 3492 }, %struct.ntc_compensation { i32 60, i32 2985 }, %struct.ntc_compensation { i32 65, i32 2563 }, %struct.ntc_compensation { i32 70, i32 2211 }, %struct.ntc_compensation { i32 75, i32 1915 }, %struct.ntc_compensation { i32 80, i32 1666 }, %struct.ntc_compensation { i32 85, i32 1454 }, %struct.ntc_compensation { i32 90, i32 1275 }, %struct.ntc_compensation { i32 95, i32 1121 }, %struct.ntc_compensation { i32 100, i32 990 }, %struct.ntc_compensation { i32 105, i32 876 }, %struct.ntc_compensation { i32 110, i32 779 }, %struct.ntc_compensation { i32 115, i32 694 }, %struct.ntc_compensation { i32 120, i32 620 }, %struct.ntc_compensation { i32 125, i32 556 }], align 4
@ntc_hwmon_ops = internal constant %struct.hwmon_ops { ptr @ntc_is_visible, ptr @ntc_read, ptr null, ptr null }, align 4
@ntc_info = internal global [3 x ptr] [ptr @.compoundliteral.13, ptr @.compoundliteral.15, ptr null], align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"\013read channel() error: %d\0A\00", align 1
@.compoundliteral = internal global [2 x i32] [i32 16, i32 0], align 4
@.compoundliteral.13 = internal global %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, align 4
@.compoundliteral.14 = internal global [2 x i32] [i32 6, i32 0], align 4
@.compoundliteral.15 = internal global %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.14 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias169, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_license168], section "llvm.metadata"

@__mod_of__ntc_match_device_table = dso_local alias [16 x %struct.of_device_id], ptr @ntc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ntc_thermistor_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ntc_thermistor_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntc_thermistor_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = tail call ptr @devm_iio_channel_get(ptr noundef %3, ptr noundef null) #7
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %43

11:                                               ; preds = %6
  %12 = call i32 @iio_get_channel_type(ptr noundef %7, ptr noundef nonnull %2) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 2
  %19 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef %18, i32 noundef 1) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %19, ptr noundef nonnull @.str.6) #7
  br label %43

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 3
  %25 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %24, i32 noundef 1) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %25, ptr noundef nonnull @.str.8) #7
  br label %43

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 4
  %31 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef %30, i32 noundef 1) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %31, ptr noundef nonnull @.str.10) #7
  br label %43

35:                                               ; preds = %29
  %36 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.11) #7
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 6
  store ptr %7, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %46

41:                                               ; preds = %14, %11
  %42 = phi i32 [ -22, %14 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %87

43:                                               ; preds = %33, %27, %21, %9
  %44 = phi i32 [ %10, %9 ], [ %22, %21 ], [ %28, %27 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %43, %35
  %47 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %68, label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %61, i1 true, i1 %64
  %66 = icmp ult i32 %63, 2
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %69, label %68

68:                                               ; preds = %58, %54, %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %87

69:                                               ; preds = %58
  %70 = call ptr @device_get_match_data(ptr noundef %3) #7
  %71 = getelementptr inbounds %struct.platform_device_id, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, 5
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %72, ptr noundef %70) #8
  br label %87

75:                                               ; preds = %69
  %76 = getelementptr [6 x %struct.ntc_type], ptr @ntc_type, i32 0, i32 %72
  %77 = load ptr, ptr %76, align 4
  store ptr %77, ptr %4, align 4
  %78 = load i32, ptr %71, align 4
  %79 = getelementptr [6 x %struct.ntc_type], ptr @ntc_type, i32 0, i32 %78, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ntc_data, ptr %4, i32 0, i32 1
  store i32 %80, ptr %81, align 4
  %82 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %3, ptr noundef %70, ptr noundef nonnull %4, ptr noundef nonnull @ntc_chip_info, ptr noundef null) #7
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %85 = ptrtoint ptr %82 to i32
  br label %87

86:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %70) #8
  br label %87

87:                                               ; preds = %86, %84, %74, %68, %43, %41, %1
  %88 = phi i32 [ -22, %68 ], [ -22, %74 ], [ %85, %84 ], [ 0, %86 ], [ -12, %1 ], [ %44, %43 ], [ %42, %41 ]
  ret i32 %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ntc_is_visible(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = icmp eq i32 %1, 1
  %6 = add i32 %2, -1
  %7 = icmp ult i32 %6, 2
  %8 = and i1 %5, %7
  %9 = select i1 %8, i16 292, i16 0
  ret i16 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntc_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %198

11:                                               ; preds = %5
  switch i32 %2, label %198 [
    i32 1, label %12
    i32 2, label %197
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %15 = call i32 @iio_read_channel_processed_scale(ptr noundef %14, ptr noundef nonnull %6, i32 noundef 1000) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %18 = call i32 @iio_read_channel_raw(ptr noundef %14, ptr noundef nonnull %7) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %198

22:                                               ; preds = %17
  %23 = load i32, ptr %7, align 4
  %24 = call i32 @iio_convert_raw_to_processed(ptr noundef %14, i32 noundef %23, ptr noundef nonnull %6, i32 noundef 1000) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %29
  %33 = lshr i64 %32, 12
  %34 = trunc i64 %33 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %38

35:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, ptr %6, align 4
  br label %38

38:                                               ; preds = %36, %26
  %39 = phi i32 [ %37, %36 ], [ %34, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %198, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = zext i32 %48 to i64
  %50 = icmp eq i32 %39, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 2147483647, i32 0
  br label %127

56:                                               ; preds = %41
  %57 = icmp ugt i32 %43, %39
  %58 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %57, label %63, label %61

61:                                               ; preds = %56
  %62 = select i1 %60, i32 0, i32 2147483647
  br label %127

63:                                               ; preds = %56
  %64 = icmp eq i32 %45, 0
  %65 = select i1 %60, i1 %64, i1 false
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = sub i32 %43, %39
  %68 = zext i32 %67 to i64
  %69 = mul nuw i64 %49, %68
  %70 = icmp ult i64 %69, 4294967296
  br i1 %70, label %71, label %75, !prof !9

71:                                               ; preds = %66
  %72 = trunc i64 %69 to i32
  %73 = udiv i32 %72, %39
  %74 = zext i32 %73 to i64
  br label %123

75:                                               ; preds = %66
  %76 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %69) #9, !srcloc !10
  %77 = extractvalue { i64, i64 } %76, 1
  br label %123

78:                                               ; preds = %63
  %79 = icmp eq i32 %59, 1
  %80 = icmp eq i32 %48, 0
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = zext i32 %39 to i64
  %84 = mul nuw nsw i64 %46, %83
  %85 = sub i32 %43, %39
  %86 = icmp ult i64 %84, 4294967296
  br i1 %86, label %87, label %91, !prof !9

87:                                               ; preds = %82
  %88 = trunc i64 %84 to i32
  %89 = udiv i32 %88, %85
  %90 = zext i32 %89 to i64
  br label %123

91:                                               ; preds = %82
  %92 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %85, i64 %84) #9, !srcloc !10
  %93 = extractvalue { i64, i64 } %92, 1
  br label %123

94:                                               ; preds = %78
  br i1 %60, label %95, label %109

95:                                               ; preds = %94
  %96 = sub i32 %43, %39
  %97 = zext i32 %96 to i64
  %98 = mul nuw i64 %49, %97
  %99 = mul i64 %98, %46
  %100 = zext i32 %39 to i64
  %101 = mul nuw nsw i64 %46, %100
  %102 = sub i64 %101, %98
  %103 = or i64 %102, %99
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %95
  %106 = icmp eq i64 %101, %98
  br i1 %106, label %123, label %107

107:                                              ; preds = %105
  %108 = call i64 @div64_u64(i64 noundef %99, i64 noundef %102) #7
  br label %123

109:                                              ; preds = %94
  %110 = zext i32 %39 to i64
  %111 = mul nuw nsw i64 %46, %110
  %112 = mul i64 %111, %49
  %113 = sub i32 %43, %39
  %114 = zext i32 %113 to i64
  %115 = mul nuw i64 %49, %114
  %116 = sub i64 %115, %111
  %117 = or i64 %116, %112
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %109
  %120 = icmp eq i64 %115, %111
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = call i64 @div64_u64(i64 noundef %112, i64 noundef %116) #7
  br label %123

123:                                              ; preds = %121, %119, %109, %107, %105, %95, %91, %87, %75, %71
  %124 = phi i64 [ %74, %71 ], [ %77, %75 ], [ %90, %87 ], [ %93, %91 ], [ %108, %107 ], [ 0, %95 ], [ 4294967295, %105 ], [ %122, %121 ], [ 0, %109 ], [ 4294967295, %119 ]
  %125 = call i64 @llvm.umin.i64(i64 %124, i64 2147483647) #7
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %123, %61, %51
  %128 = phi i32 [ %126, %123 ], [ %62, %61 ], [ %55, %51 ]
  %129 = load ptr, ptr %9, align 4
  %130 = getelementptr inbounds %struct.ntc_compensation, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp ugt i32 %131, %128
  br i1 %132, label %133, label %170

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.ntc_data, ptr %9, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, -1
  %137 = getelementptr %struct.ntc_compensation, ptr %129, i32 %136, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %138, %128
  br i1 %139, label %140, label %170

140:                                              ; preds = %133
  %141 = icmp sgt i32 %135, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %157, %140
  %143 = phi i32 [ %159, %157 ], [ %135, %140 ]
  %144 = phi i32 [ %158, %157 ], [ 0, %140 ]
  %145 = sub i32 %143, %144
  %146 = sdiv i32 %145, 2
  %147 = add i32 %146, %144
  %148 = getelementptr %struct.ntc_compensation, ptr %129, i32 %147, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = icmp ugt i32 %149, %128
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = add i32 %147, 1
  %153 = getelementptr %struct.ntc_compensation, ptr %129, i32 %152, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %154, %128
  %156 = select i1 %155, i32 %143, i32 %152
  br label %157

157:                                              ; preds = %151, %142
  %158 = phi i32 [ %144, %142 ], [ %152, %151 ]
  %159 = phi i32 [ %147, %142 ], [ %156, %151 ]
  %160 = icmp sgt i32 %159, %158
  br i1 %160, label %142, label %161

161:                                              ; preds = %157, %140
  %162 = phi i32 [ %135, %140 ], [ %159, %157 ]
  %163 = getelementptr %struct.ntc_compensation, ptr %129, i32 %162, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = icmp ne i32 %164, %128
  %166 = sext i1 %165 to i32
  %167 = add i32 %162, %166
  %168 = getelementptr %struct.ntc_compensation, ptr %129, i32 %167, i32 1
  %169 = load i32, ptr %168, align 4
  br label %170

170:                                              ; preds = %161, %133, %127
  %171 = phi i32 [ %169, %161 ], [ %131, %127 ], [ %138, %133 ]
  %172 = phi i32 [ %164, %161 ], [ %131, %127 ], [ %138, %133 ]
  %173 = phi i32 [ %162, %161 ], [ 0, %127 ], [ %136, %133 ]
  %174 = phi i32 [ %167, %161 ], [ 0, %127 ], [ %136, %133 ]
  %175 = getelementptr %struct.ntc_compensation, ptr %129, i32 %173
  %176 = load i32, ptr %175, align 4
  %177 = mul i32 %176, 1000
  %178 = getelementptr %struct.ntc_compensation, ptr %129, i32 %174
  %179 = load i32, ptr %178, align 4
  %180 = mul i32 %179, 1000
  %181 = icmp eq i32 %180, %177
  %182 = icmp eq i32 %128, %172
  %183 = or i1 %182, %181
  br i1 %183, label %195, label %184

184:                                              ; preds = %170
  %185 = icmp eq i32 %171, %172
  %186 = icmp eq i32 %171, %128
  %187 = or i1 %186, %185
  br i1 %187, label %195, label %188

188:                                              ; preds = %184
  %189 = sub i32 %180, %177
  %190 = sub i32 %128, %172
  %191 = mul i32 %189, %190
  %192 = sub i32 %171, %172
  %193 = sdiv i32 %191, %192
  %194 = add i32 %193, %177
  br label %195

195:                                              ; preds = %188, %184, %170
  %196 = phi i32 [ %194, %188 ], [ %177, %170 ], [ %180, %184 ]
  store i32 %196, ptr %4, align 4
  br label %198

197:                                              ; preds = %11
  store i32 4, ptr %4, align 4
  br label %198

198:                                              ; preds = %197, %195, %38, %20, %11, %5
  %199 = phi i32 [ 0, %197 ], [ 0, %195 ], [ -22, %5 ], [ -22, %11 ], [ %39, %38 ], [ %18, %20 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed_scale(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_convert_raw_to_processed(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!10 = !{i64 2148124160, i64 2148124440, i64 2148124774, i64 2148125108}
