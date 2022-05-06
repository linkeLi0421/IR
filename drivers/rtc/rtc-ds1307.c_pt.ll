; ModuleID = '/llk/IR/drivers/rtc/rtc-ds1307.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1307.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.chip_desc = type { i8, i16, i16, i8, i8, i8, i8, i8, ptr, ptr, i16, ptr, i8, i8 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.ds1307 = type { i32, ptr, ptr, ptr, ptr, [2 x %struct.clk_hw] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ds1307__247_2018_ds1307_driver_init6 = internal global ptr @ds1307_driver_init, section ".initcall6.init", align 4
@ds1307_driver = internal global %struct.i2c_driver { i32 0, ptr @ds1307_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ds1307_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ds1307_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_ds1307_driver_exit = internal global ptr @ds1307_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [63 x i8] c"rtc_ds1307.description=RTC driver for DS1307 and similar chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [39 x i8] c"rtc_ds1307.file=drivers/rtc/rtc-ds1307\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [23 x i8] c"rtc_ds1307.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"rtc-ds1307\00", align 1
@ds1307_of_match = internal constant [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1307\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1308\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1337\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1338\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1339\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1388\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1340\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1341\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,ds3231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp7940x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp7941x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pericom,pt7c4338\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8025\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl12057\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@ds1307_id = internal constant [19 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds1307\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ds1308\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ds1337\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ds1338\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ds1339\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ds1388\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"ds1340\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ds1341\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"ds3231\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"m41t0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"m41t00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"m41t11\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"mcp7940x\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"mcp7941x\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"pt7c4338\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"rx8025\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"isl12057\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"rx8130\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id zeroinitializer], align 4
@regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"regmap allocation failed\0A\00", align 1
@chips = internal unnamed_addr constant [16 x %struct.chip_desc] [%struct.chip_desc zeroinitializer, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 1, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 1, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 32, ptr null, ptr null, i16 16, ptr @do_trickle_setup_ds1339, i8 1, i8 1 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 2, i8 -128, i8 64, i8 0, ptr null, ptr null, i16 8, ptr @do_trickle_setup_ds1339, i8 1, i8 1 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 10, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 1, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 64, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @m41txx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @m41txx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @m41txx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 1, i16 32, i16 64, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @mcp794xx_irq, ptr @mcp794xx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc zeroinitializer, %struct.chip_desc { i8 1, i16 32, i16 4, i8 16, i8 0, i8 0, i8 0, i8 0, ptr @rx8130_irq, ptr @rx8130_rtc_ops, i16 31, ptr @do_trickle_setup_rx8130, i8 0, i8 0 }], align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SET TIME!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"oscillator stop detected - SET TIME!\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"power-on detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"voltage drop detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"'wakeup-source' is set, request for an IRQ is disabled!\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"unable to request IRQ!\0A\00", align 1
@ds13xx_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @ds1337_read_alarm, ptr @ds1337_set_alarm, ptr null, ptr @ds1307_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"ds1307_nvram\00", align 1
@m41txx_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @ds1337_read_alarm, ptr @ds1337_set_alarm, ptr null, ptr @ds1307_alarm_irq_enable, ptr @m41txx_rtc_read_offset, ptr @m41txx_rtc_set_offset, ptr null, ptr null }, align 4
@mcp794xx_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @mcp794xx_read_alarm, ptr @mcp794xx_set_alarm, ptr null, ptr @mcp794xx_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@rx8130_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @rx8130_read_alarm, ptr @rx8130_set_alarm, ptr null, ptr @rx8130_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Unsupported ohm value %u in dt\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ds1307_get_time.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"oscillator failed, set time!\0A\00", align 1
@ds1307_get_time.__print_once.14 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"alarm read\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"alarm write\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"can't set alarm time\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"trickle-resistor-ohms\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"aux-voltage-chargeable\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"unsupported aux-voltage-chargeable value\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"trickle-diode-disable\00", align 1
@rtc_freq_test_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtc_freq_test_attrs, ptr null }, align 4
@rtc_freq_test_attrs = internal global [2 x ptr] [ptr @dev_attr_frequency_test, ptr null], align 4
@dev_attr_frequency_test = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @frequency_test_show, ptr @frequency_test_store }, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"frequency_test\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Failed to store RTC Frequency Test attribute\0A\00", align 1
@ds3231_hwmon_groups = internal global [2 x ptr] [ptr @ds3231_hwmon_group, ptr null], align 4
@.str.27 = private unnamed_addr constant [37 x i8] c"unable to register hwmon device %ld\0A\00", align 1
@ds3231_hwmon_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ds3231_hwmon_attrs, ptr null }, align 4
@ds3231_hwmon_attrs = internal global [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], align 4
@sensor_dev_attr_temp1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @ds3231_hwmon_show_temp, ptr null }, i32 0 }, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"temp1_input\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"unable to register clock device %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@ds3231_clks_names = internal global [2 x ptr] [ptr @.str.32, ptr @.str.33], align 4
@ds3231_clks_init = internal unnamed_addr constant [2 x %struct.clk_init_data] [%struct.clk_init_data { ptr null, ptr @ds3231_clk_sqw_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.clk_init_data { ptr null, ptr @ds3231_clk_32khz_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }], align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"ds3231_clk_sqw\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"ds3231_clk_32khz\00", align 1
@ds3231_clk_sqw_ops = internal constant %struct.clk_ops { ptr @ds3231_clk_sqw_prepare, ptr @ds3231_clk_sqw_unprepare, ptr @ds3231_clk_sqw_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds3231_clk_sqw_recalc_rate, ptr @ds3231_clk_sqw_round_rate, ptr null, ptr null, ptr null, ptr @ds3231_clk_sqw_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ds3231_clk_32khz_ops = internal constant %struct.clk_ops { ptr @ds3231_clk_32khz_prepare, ptr @ds3231_clk_32khz_unprepare, ptr @ds3231_clk_32khz_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds3231_clk_32khz_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ds3231_clk_sqw_rates = internal unnamed_addr constant [4 x i32] [i32 1, i32 1024, i32 4096, i32 8192], align 4
@ds1388_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"DS1388 watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@ds1388_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @ds1388_wdt_start, ptr @ds1388_wdt_stop, ptr @ds1388_wdt_ping, ptr null, ptr @ds1388_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_ds1307_driver_exit, ptr @__initcall__kmod_rtc_ds1307__247_2018_ds1307_driver_init6, ptr @ds1307_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ds1307_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds1307_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ds1307_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ds1307_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_probe(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 8
  %7 = alloca %struct.nvmem_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 44, i32 noundef 3520) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %350, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ds1307, ptr %11, i32 0, i32 1
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.ds1307, ptr %11, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @regmap_config, ptr noundef null, ptr noundef null) #12
  %19 = getelementptr inbounds %struct.ds1307, ptr %11, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1) #13
  %23 = load ptr, ptr %19, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %350

25:                                               ; preds = %13
  store ptr %11, ptr %14, align 8
  %26 = tail call ptr @device_get_match_data(ptr noundef %8) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  br label %35

30:                                               ; preds = %25
  %31 = icmp eq ptr %1, null
  br i1 %31, label %350, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %29, %28 ], [ %34, %32 ]
  store i32 %36, ptr %11, align 4
  %37 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36
  %38 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8, ptr %37, align 4
  %43 = and i8 %42, 1
  %44 = icmp ne i8 %43, 0
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ]
  %47 = icmp eq ptr %10, null
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %49 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = and i32 %36, 134217727
  %52 = lshr i32 32671, %51
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %48
  %56 = load ptr, ptr %15, align 4
  %57 = call i32 @device_property_read_u32_array(ptr noundef %56, ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i32 noundef 1) #12
  %58 = icmp eq i32 %57, 0
  %59 = add nsw i32 %51, -7
  %60 = icmp ult i32 %59, -2
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = load ptr, ptr %15, align 4
  %64 = call i32 @device_property_read_u32_array(ptr noundef %63, ptr noundef nonnull @.str.20, ptr noundef nonnull %4, i32 noundef 1) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, ptr %4, align 4
  switch i32 %67, label %69 [
    i32 0, label %80
    i32 1, label %68
  ]

68:                                               ; preds = %66
  br label %80

69:                                               ; preds = %66
  %70 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.21) #13
  %71 = add nsw i32 %51, -5
  %72 = icmp ult i32 %71, 2
  br label %80

73:                                               ; preds = %62
  %74 = load ptr, ptr %15, align 4
  %75 = call zeroext i1 @device_property_present(ptr noundef %74, ptr noundef nonnull @.str.22) #12
  %76 = add nsw i32 %51, -5
  %77 = icmp ult i32 %76, 2
  %78 = xor i1 %75, true
  %79 = select i1 %78, i1 %77, i1 false
  br label %80

80:                                               ; preds = %73, %69, %68, %66
  %81 = phi i1 [ %72, %69 ], [ true, %68 ], [ false, %66 ], [ %79, %73 ]
  %82 = load i32, ptr %3, align 4
  %83 = call zeroext i8 %50(ptr noundef nonnull %11, i32 noundef %82, i1 noundef zeroext %81) #12
  br label %84

84:                                               ; preds = %80, %55, %48
  %85 = phi i8 [ %83, %80 ], [ 0, %48 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %88

86:                                               ; preds = %45
  %87 = load i8, ptr %10, align 1
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i8 [ %85, %84 ], [ %87, %86 ]
  %90 = zext i8 %89 to i32
  %91 = icmp eq i8 %89, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = and i32 %36, 134217727
  %94 = lshr i32 32415, %93
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 10
  %99 = load i16, ptr %98, align 4
  %100 = zext i16 %99 to i32
  %101 = load ptr, ptr %19, align 4
  %102 = call i32 @regmap_write(ptr noundef %101, i32 noundef %100, i32 noundef %90) #12
  br label %103

103:                                              ; preds = %97, %92, %88
  %104 = load i8, ptr %37, align 4
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call zeroext i1 @device_property_present(ptr noundef %8, ptr noundef nonnull @.str.2) #12
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i1 [ false, %103 ], [ %108, %107 ]
  %111 = load i32, ptr %11, align 4
  switch i32 %111, label %221 [
    i32 3, label %112
    i32 5, label %112
    i32 7, label %112
    i32 9, label %112
    i32 14, label %145
    i32 8, label %209
  ]

112:                                              ; preds = %109, %109, %109, %109
  %113 = load ptr, ptr %19, align 4
  %114 = call i32 @regmap_bulk_read(ptr noundef %113, i32 noundef 14, ptr noundef nonnull %6, i32 noundef 2) #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %350

116:                                              ; preds = %112
  %117 = load i8, ptr %6, align 8
  %118 = icmp sgt i8 %117, -1
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = and i8 %117, 127
  store i8 %120, ptr %6, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i8 [ %120, %119 ], [ %117, %116 ]
  %123 = select i1 %46, i1 true, i1 %110
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 7
  %126 = load i8, ptr %125, align 2
  %127 = or i8 %126, %122
  %128 = and i8 %127, -8
  %129 = or i8 %128, 4
  store i8 %129, ptr %6, align 8
  br label %130

130:                                              ; preds = %124, %121
  %131 = phi i8 [ %122, %121 ], [ %129, %124 ]
  %132 = load ptr, ptr %19, align 4
  %133 = zext i8 %131 to i32
  %134 = call i32 @regmap_write(ptr noundef %132, i32 noundef 14, i32 noundef %133) #12
  %135 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 128
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %221, label %140

140:                                              ; preds = %130
  %141 = load ptr, ptr %19, align 4
  %142 = and i32 %137, 127
  %143 = call i32 @regmap_write(ptr noundef %141, i32 noundef 15, i32 noundef %142) #12
  %144 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.3) #13
  br label %221

145:                                              ; preds = %109
  %146 = load ptr, ptr %19, align 4
  %147 = call i32 @regmap_bulk_read(ptr noundef %146, i32 noundef 232, ptr noundef nonnull %6, i32 noundef 2) #12
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %350

149:                                              ; preds = %145
  %150 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 1
  %151 = load i8, ptr %150, align 1
  %152 = and i8 %151, 32
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = or i8 %151, 32
  store i8 %155, ptr %150, align 1
  %156 = load ptr, ptr %19, align 4
  %157 = zext i8 %155 to i32
  %158 = call i32 @regmap_write(ptr noundef %156, i32 noundef 248, i32 noundef %157) #12
  %159 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %159, ptr noundef nonnull @.str.4) #13
  %160 = load i8, ptr %150, align 1
  br label %161

161:                                              ; preds = %154, %149
  %162 = phi i8 [ %160, %154 ], [ %151, %149 ]
  %163 = and i8 %162, 16
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %161
  %166 = and i8 %162, -17
  store i8 %166, ptr %150, align 1
  %167 = load ptr, ptr %19, align 4
  %168 = zext i8 %166 to i32
  %169 = call i32 @regmap_write(ptr noundef %167, i32 noundef 248, i32 noundef %168) #12
  %170 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %170, ptr noundef nonnull @.str.5) #13
  %171 = load i8, ptr %150, align 1
  br label %172

172:                                              ; preds = %165, %161
  %173 = phi i8 [ %171, %165 ], [ %162, %161 ]
  %174 = and i8 %173, 64
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %172
  %177 = and i8 %173, -65
  store i8 %177, ptr %150, align 1
  %178 = load ptr, ptr %19, align 4
  %179 = zext i8 %177 to i32
  %180 = call i32 @regmap_write(ptr noundef %178, i32 noundef 248, i32 noundef %179) #12
  %181 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.6) #13
  br label %182

182:                                              ; preds = %176, %172
  %183 = load i8, ptr %6, align 8
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %182
  %188 = load ptr, ptr %19, align 4
  %189 = or i32 %184, 32
  %190 = call i32 @regmap_write(ptr noundef %188, i32 noundef 232, i32 noundef %189) #12
  %191 = load ptr, ptr %19, align 4
  %192 = call i32 @regmap_bulk_read(ptr noundef %191, i32 noundef 232, ptr noundef nonnull %6, i32 noundef 2) #12
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %350

194:                                              ; preds = %187
  %195 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 2
  %196 = load i8, ptr %195, align 2
  %197 = call i32 @_bcd2bin(i8 noundef zeroext %196) #14
  %198 = trunc i32 %197 to i8
  %199 = and i32 %197, 255
  %200 = icmp eq i32 %199, 12
  %201 = select i1 %200, i8 0, i8 %198
  %202 = and i8 %196, 32
  %203 = icmp eq i8 %202, 0
  %204 = add i8 %201, 12
  %205 = select i1 %203, i8 %201, i8 %204
  %206 = load ptr, ptr %19, align 4
  %207 = zext i8 %205 to i32
  %208 = call i32 @regmap_write(ptr noundef %206, i32 noundef 40, i32 noundef %207) #12
  br label %221

209:                                              ; preds = %109
  %210 = load ptr, ptr %19, align 4
  %211 = call i32 @regmap_read(ptr noundef %210, i32 noundef 12, ptr noundef nonnull %5) #12
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %350

213:                                              ; preds = %209
  %214 = load i32, ptr %5, align 4
  %215 = and i32 %214, 128
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = and i32 %214, -129
  store i32 %218, ptr %5, align 4
  %219 = load ptr, ptr %19, align 4
  %220 = call i32 @regmap_write(ptr noundef %219, i32 noundef 12, i32 noundef %218) #12
  br label %221

221:                                              ; preds = %217, %213, %194, %182, %140, %130, %109
  %222 = load ptr, ptr %19, align 4
  %223 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 3
  %224 = load i8, ptr %223, align 2
  %225 = zext i8 %224 to i32
  %226 = call i32 @regmap_bulk_read(ptr noundef %222, i32 noundef %225, ptr noundef nonnull %6, i32 noundef 8) #12
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %350

228:                                              ; preds = %221
  %229 = load i32, ptr %11, align 4
  %230 = icmp eq i32 %229, 13
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 3
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %231
  %238 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 2
  %239 = load i8, ptr %238, align 2
  %240 = zext i8 %239 to i32
  store i32 %240, ptr %5, align 4
  br label %251

241:                                              ; preds = %231
  %242 = load ptr, ptr %19, align 4
  %243 = or i32 %234, 8
  %244 = call i32 @regmap_write(ptr noundef %242, i32 noundef 3, i32 noundef %243) #12
  %245 = load i32, ptr %11, align 4
  br label %246

246:                                              ; preds = %241, %228
  %247 = phi i32 [ %229, %228 ], [ %245, %241 ]
  %248 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 2
  %249 = load i8, ptr %248, align 2
  %250 = zext i8 %249 to i32
  store i32 %250, ptr %5, align 4
  switch i32 %247, label %251 [
    i32 6, label %271
    i32 10, label %271
    i32 11, label %271
    i32 12, label %271
    i32 14, label %271
  ]

251:                                              ; preds = %246, %237
  %252 = phi i32 [ %240, %237 ], [ %250, %246 ]
  %253 = phi i8 [ %239, %237 ], [ %249, %246 ]
  %254 = and i32 %252, 64
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %271, label %256

256:                                              ; preds = %251
  %257 = trunc i32 %252 to i8
  %258 = and i8 %257, 31
  %259 = call i32 @_bcd2bin(i8 noundef zeroext %258) #14
  %260 = icmp eq i32 %259, 12
  %261 = select i1 %260, i32 0, i32 %259
  %262 = and i8 %253, 32
  %263 = icmp eq i8 %262, 0
  %264 = add i32 %261, 12
  %265 = select i1 %263, i32 %261, i32 %264
  store i32 %265, ptr %5, align 4
  %266 = load ptr, ptr %19, align 4
  %267 = add nuw nsw i32 %225, 2
  %268 = call zeroext i8 @_bin2bcd(i32 noundef %265) #14
  %269 = zext i8 %268 to i32
  %270 = call i32 @regmap_write(ptr noundef %266, i32 noundef %267, i32 noundef %269) #12
  br label %271

271:                                              ; preds = %256, %251, %246, %246, %246, %246, %246
  %272 = load ptr, ptr %15, align 4
  %273 = call ptr @devm_rtc_allocate_device(ptr noundef %272) #12
  %274 = getelementptr inbounds %struct.ds1307, ptr %11, i32 0, i32 4
  store ptr %273, ptr %274, align 4
  %275 = icmp ugt ptr %273, inttoptr (i32 -4096 to ptr)
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = ptrtoint ptr %273 to i32
  br label %350

278:                                              ; preds = %271
  %279 = select i1 %46, i1 true, i1 %110
  br i1 %279, label %280, label %282

280:                                              ; preds = %278
  %281 = load ptr, ptr %15, align 4
  call void @device_set_wakeup_capable(ptr noundef %281, i1 noundef zeroext true) #12
  br label %284

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.rtc_device, ptr %273, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %283) #12
  br label %284

284:                                              ; preds = %282, %280
  %285 = xor i1 %110, true
  %286 = select i1 %285, i1 true, i1 %46
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %288, ptr noundef nonnull @.str.7) #13
  %289 = load ptr, ptr %274, align 4
  %290 = getelementptr inbounds %struct.rtc_device, ptr %289, i32 0, i32 19
  store i32 1, ptr %290, align 4
  br label %291

291:                                              ; preds = %287, %284
  br i1 %46, label %292, label %308

292:                                              ; preds = %291
  %293 = load ptr, ptr %15, align 4
  %294 = load i32, ptr %38, align 4
  %295 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 8
  %296 = load ptr, ptr %295, align 4
  %297 = and i32 %36, 134217725
  %298 = icmp eq i32 %297, 13
  %299 = select i1 %298, ptr %296, ptr @ds1307_irq
  %300 = load ptr, ptr %17, align 4
  %301 = call i32 @devm_request_threaded_irq(ptr noundef %293, i32 noundef %294, ptr noundef null, ptr noundef %299, i32 noundef 8320, ptr noundef %300, ptr noundef nonnull %11) #12
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %292
  store i32 0, ptr %38, align 4
  %304 = load ptr, ptr %15, align 4
  call void @device_set_wakeup_capable(ptr noundef %304, i1 noundef zeroext false) #12
  %305 = load ptr, ptr %274, align 4
  %306 = getelementptr inbounds %struct.rtc_device, ptr %305, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %306) #12
  %307 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.8) #13
  br label %308

308:                                              ; preds = %303, %292, %291
  %309 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 9
  %310 = load ptr, ptr %309, align 4
  %311 = and i32 %36, 134217727
  %312 = lshr i32 17407, %311
  %313 = and i32 %312, 1
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %314, ptr %310, ptr @ds13xx_rtc_ops
  %316 = load ptr, ptr %274, align 4
  %317 = getelementptr inbounds %struct.rtc_device, ptr %316, i32 0, i32 3
  store ptr %315, ptr %317, align 8
  %318 = load i32, ptr %11, align 4
  %319 = add i32 %318, -10
  %320 = icmp ult i32 %319, 3
  br i1 %320, label %321, label %325

321:                                              ; preds = %308
  %322 = load ptr, ptr %274, align 4
  %323 = call i32 @rtc_add_group(ptr noundef %322, ptr noundef nonnull @rtc_freq_test_attr_group) #12
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %350

325:                                              ; preds = %321, %308
  %326 = load ptr, ptr %274, align 4
  %327 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %326) #12
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %350

329:                                              ; preds = %325
  %330 = lshr i32 20457, %311
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %349

333:                                              ; preds = %329
  %334 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %36, i32 2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #12
  %335 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %7, i8 0, i64 84, i1 false)
  store ptr @.str.9, ptr %335, align 4
  %336 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 2
  %337 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 14
  store i8 0, ptr %337, align 4
  %338 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(35) %336, i8 0, i64 35, i1 false)
  store ptr @ds1307_nvram_read, ptr %338, align 4
  %339 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 16
  store ptr @ds1307_nvram_write, ptr %339, align 4
  %340 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 18
  %341 = load i16, ptr %334, align 4
  %342 = zext i16 %341 to i32
  store i32 %342, ptr %340, align 4
  %343 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 19
  store i32 1, ptr %343, align 4
  %344 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 20
  store i32 1, ptr %344, align 4
  %345 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 21
  store ptr %11, ptr %345, align 4
  %346 = getelementptr inbounds %struct.nvmem_config, ptr %7, i32 0, i32 23
  store ptr null, ptr %346, align 4
  %347 = load ptr, ptr %274, align 4
  %348 = call i32 @devm_rtc_nvmem_register(ptr noundef %347, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #12
  br label %349

349:                                              ; preds = %333, %329
  call fastcc void @ds1307_hwmon_register(ptr noundef nonnull %11)
  call fastcc void @ds1307_clks_register(ptr noundef nonnull %11)
  call fastcc void @ds1307_wdt_register(ptr noundef nonnull %11)
  br label %350

350:                                              ; preds = %349, %325, %321, %276, %221, %209, %187, %145, %112, %30, %21, %2
  %351 = phi i32 [ %24, %21 ], [ %277, %276 ], [ 0, %349 ], [ -12, %2 ], [ -19, %30 ], [ %327, %325 ], [ %226, %221 ], [ %211, %209 ], [ %147, %145 ], [ %114, %112 ], [ %192, %187 ], [ %323, %321 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %351
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
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 15, ptr noundef nonnull %3) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = and i32 %12, -2
  store i32 %16, ptr %3, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @regmap_write(ptr noundef %17, i32 noundef 15, i32 noundef %16) #12
  %19 = load ptr, ptr %7, align 4
  %20 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 14, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 4
  call void @rtc_update_irq(ptr noundef %23, i32 noundef 1, i32 noundef 160) #12
  br label %24

24:                                               ; preds = %22, %15, %11, %2
  call void @mutex_unlock(ptr noundef %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_nvram_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %5, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = add i32 %10, %1
  %12 = tail call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef %11, ptr noundef %2, i32 noundef %3) #12
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_nvram_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %5, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = add i32 %10, %1
  %12 = tail call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef %11, ptr noundef %2, i32 noundef %3) #12
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ds1307_hwmon_register(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 9
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %6, ptr noundef %8, ptr noundef %0, ptr noundef nonnull @ds3231_hwmon_groups) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %13) #13
  br label %14

14:                                               ; preds = %11, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ds1307_clks_register(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 8, i32 noundef 3520) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.clk_onecell_data, ptr %10, i32 0, i32 1
  store i32 2, ptr %13, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 8, i32 noundef 3520) #12
  store ptr %15, ptr %10, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i32 @device_property_read_string_array(ptr noundef %18, ptr noundef nonnull @.str.31, ptr noundef nonnull @ds3231_clks_names, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @ds3231_clks_init, i32 28, i1 false) #12
  %20 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load ptr, ptr @ds3231_clks_names, align 4
  store ptr %27, ptr %2, align 4
  %28 = getelementptr %struct.ds1307, ptr %0, i32 0, i32 5, i32 0
  %29 = getelementptr %struct.ds1307, ptr %0, i32 0, i32 5, i32 0, i32 2
  store ptr %2, ptr %29, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = call ptr @devm_clk_register(ptr noundef %30, ptr noundef %28) #12
  store ptr %31, ptr %15, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %45, label %33

33:                                               ; preds = %26, %17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) getelementptr inbounds ([2 x %struct.clk_init_data], ptr @ds3231_clks_init, i32 0, i32 1), i32 28, i1 false) #12
  %34 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @ds3231_clks_names, i32 0, i32 1), align 4
  store ptr %34, ptr %2, align 4
  %35 = getelementptr %struct.ds1307, ptr %0, i32 0, i32 5, i32 1
  %36 = getelementptr %struct.ds1307, ptr %0, i32 0, i32 5, i32 1, i32 2
  store ptr %2, ptr %36, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = call ptr @devm_clk_register(ptr noundef %37, ptr noundef %35) #12
  %39 = getelementptr ptr, ptr %15, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  %42 = icmp eq ptr %9, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %41
  %44 = call i32 @of_clk_add_provider(ptr noundef nonnull %9, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %10) #12
  br label %52

45:                                               ; preds = %33, %26
  %46 = phi ptr [ %31, %26 ], [ %38, %33 ]
  %47 = ptrtoint ptr %46 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  %48 = icmp eq ptr %46, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45, %12, %5
  %50 = phi i32 [ %47, %45 ], [ -12, %5 ], [ -12, %12 ]
  %51 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.30, i32 noundef %50) #13
  br label %52

52:                                               ; preds = %49, %45, %43, %41, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ds1307_wdt_register(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 108, i32 noundef 3520) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 11, ptr noundef nonnull %2) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 6
  store i32 32, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %15, %10
  %22 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 3
  store ptr @ds1388_wdt_info, ptr %22, align 4
  %23 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 4
  store ptr @ds1388_wdt_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 7
  store i32 99, ptr %24, align 4
  %25 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 10
  store i32 99, ptr %25, align 4
  %26 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 9
  store i32 1, ptr %26, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = call i32 @watchdog_init_timeout(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %27) #12
  %29 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 16
  store ptr %0, ptr %29, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = call i32 @devm_watchdog_register_device(ptr noundef %30, ptr noundef nonnull %8) #12
  br label %32

32:                                               ; preds = %21, %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @do_trickle_setup_ds1339(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
  %4 = select i1 %2, i8 -88, i8 -92
  switch i32 %1, label %11 [
    i32 250, label %5
    i32 2000, label %7
    i32 4000, label %9
  ]

5:                                                ; preds = %3
  %6 = or i8 %4, 1
  br label %14

7:                                                ; preds = %3
  %8 = or i8 %4, 2
  br label %14

9:                                                ; preds = %3
  %10 = or i8 %4, 3
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ds1307, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %1) #13
  br label %14

14:                                               ; preds = %11, %9, %7, %5
  %15 = phi i8 [ 0, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp794xx_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 13, ptr noundef nonnull %3) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = and i32 %12, -9
  store i32 %16, ptr %3, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @regmap_write(ptr noundef %17, i32 noundef 13, i32 noundef %16) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 7, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 4
  call void @rtc_update_irq(ptr noundef %25, i32 noundef 1, i32 noundef 160) #12
  br label %26

26:                                               ; preds = %24, %20, %15, %11, %2
  call void @mutex_unlock(ptr noundef %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8130_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %3, i32 noundef 3) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = and i8 %13, -9
  store i8 %17, ptr %12, align 1
  %18 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, -9
  store i8 %20, ptr %18, align 1
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 28, ptr noundef nonnull %3, i32 noundef 3) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %4, align 4
  call void @rtc_update_irq(ptr noundef %25, i32 noundef 1, i32 noundef 160) #12
  br label %26

26:                                               ; preds = %24, %16, %11, %2
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %28) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @do_trickle_setup_rx8130(ptr nocapture noundef readnone %0, i32 noundef %1, i1 noundef zeroext %2) #7 {
  %4 = select i1 %2, i8 48, i8 16
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_get_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8], align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, i8 0, i32 7, i1 false), !annotation !8
  %9 = load i32, ptr %7, align 4
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.ds1307, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 29, ptr noundef nonnull %5) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %14) #13
  br label %24

17:                                               ; preds = %11
  %18 = load i32, ptr %5, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i1, ptr @ds1307_get_time.__print_once, align 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  store i1 true, ptr @ds1307_get_time.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #13
  br label %24

24:                                               ; preds = %23, %21, %16
  %25 = phi i32 [ -22, %21 ], [ -22, %23 ], [ %14, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %134

26:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %27

27:                                               ; preds = %26, %2
  %28 = getelementptr inbounds %struct.ds1307, ptr %7, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %8, i32 3
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef %32, ptr noundef nonnull %4, i32 noundef 7) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %33) #13
  br label %134

36:                                               ; preds = %27
  %37 = load i32, ptr %7, align 4
  %38 = icmp ne i32 %37, 10
  %39 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = icmp sgt i8 %40, -1
  %42 = select i1 %38, i1 true, i1 %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i1, ptr @ds1307_get_time.__print_once.14, align 1
  br i1 %44, label %134, label %45

45:                                               ; preds = %43
  store i1 true, ptr @ds1307_get_time.__print_once.14, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #13
  br label %134

46:                                               ; preds = %36
  %47 = load i8, ptr %4, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, ptr %3, align 4
  %49 = load i32, ptr %7, align 4
  switch i32 %49, label %86 [
    i32 1, label %50
    i32 10, label %50
    i32 11, label %50
    i32 12, label %50
    i32 2, label %53
    i32 4, label %53
    i32 6, label %64
    i32 8, label %75
    i32 13, label %83
  ]

50:                                               ; preds = %46, %46, %46, %46
  %51 = and i32 %48, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %86, label %134

53:                                               ; preds = %46, %46
  %54 = and i32 %48, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %134

56:                                               ; preds = %53
  %57 = load ptr, ptr %28, align 4
  %58 = call i32 @regmap_read(ptr noundef %57, i32 noundef 7, ptr noundef nonnull %3) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %134

60:                                               ; preds = %56
  %61 = load i32, ptr %3, align 4
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %134

64:                                               ; preds = %46
  %65 = and i32 %48, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %134

67:                                               ; preds = %64
  %68 = load ptr, ptr %28, align 4
  %69 = call i32 @regmap_read(ptr noundef %68, i32 noundef 9, ptr noundef nonnull %3) #12
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %134

71:                                               ; preds = %67
  %72 = load i32, ptr %3, align 4
  %73 = and i32 %72, 128
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %134

75:                                               ; preds = %46
  %76 = load ptr, ptr %28, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef 11, ptr noundef nonnull %3) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %134

79:                                               ; preds = %75
  %80 = load i32, ptr %3, align 4
  %81 = and i32 %80, 128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %134

83:                                               ; preds = %46
  %84 = and i32 %48, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %134, label %86

86:                                               ; preds = %83, %79, %71, %60, %50, %46
  %87 = load i8, ptr %4, align 1
  %88 = and i8 %87, 127
  %89 = call i32 @_bcd2bin(i8 noundef zeroext %88) #14
  store i32 %89, ptr %1, align 4
  %90 = load i8, ptr %39, align 1
  %91 = and i8 %90, 127
  %92 = call i32 @_bcd2bin(i8 noundef zeroext %91) #14
  %93 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = and i8 %95, 63
  %97 = zext i8 %96 to i32
  store i32 %97, ptr %3, align 4
  %98 = call i32 @_bcd2bin(i8 noundef zeroext %96) #14
  %99 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  %100 = load i32, ptr %7, align 4
  %101 = icmp eq i32 %100, 15
  %102 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 3
  %103 = load i8, ptr %102, align 1
  br i1 %101, label %104, label %111

104:                                              ; preds = %86
  %105 = and i8 %103, 127
  %106 = zext i8 %105 to i32
  %107 = icmp eq i8 %105, 0
  %108 = call i32 @llvm.ctlz.i32(i32 %106, i1 false) #12, !range !9
  %109 = sub nuw nsw i32 32, %108
  %110 = select i1 %107, i32 0, i32 %109
  br label %115

111:                                              ; preds = %86
  %112 = and i8 %103, 7
  %113 = call i32 @_bcd2bin(i8 noundef zeroext %112) #14
  %114 = add i32 %113, -1
  br label %115

115:                                              ; preds = %111, %104
  %116 = phi i32 [ %114, %111 ], [ %110, %104 ]
  %117 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %116, ptr %117, align 4
  %118 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 4
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, 63
  %121 = call i32 @_bcd2bin(i8 noundef zeroext %120) #14
  %122 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 5
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, 31
  %126 = call i32 @_bcd2bin(i8 noundef zeroext %125) #14
  %127 = add i32 %126, -1
  %128 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 6
  %130 = load i8, ptr %129, align 1
  %131 = call i32 @_bcd2bin(i8 noundef zeroext %130) #14
  %132 = add i32 %131, 100
  %133 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %132, ptr %133, align 4
  br label %134

134:                                              ; preds = %115, %83, %79, %75, %71, %67, %64, %60, %56, %53, %50, %45, %43, %35, %24
  %135 = phi i32 [ %33, %35 ], [ 0, %115 ], [ -22, %45 ], [ -22, %43 ], [ -22, %50 ], [ -22, %53 ], [ %58, %56 ], [ -22, %60 ], [ -22, %64 ], [ %69, %67 ], [ -22, %71 ], [ %77, %75 ], [ -22, %79 ], [ -22, %83 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #12
  %7 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -200
  %11 = icmp ult i32 %10, -100
  br i1 %11, label %97, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %1, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #14
  store i8 %14, ptr %3, align 1
  %15 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #14
  %18 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #14
  %22 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  store i8 %21, ptr %22, align 1
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %23, 15
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  br i1 %24, label %27, label %29

27:                                               ; preds = %12
  %28 = shl nuw i32 1, %26
  br label %33

29:                                               ; preds = %12
  %30 = add i32 %26, 1
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #14
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %28, %27 ], [ %32, %29 ]
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #14
  %40 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  %44 = tail call zeroext i8 @_bin2bcd(i32 noundef %43) #14
  %45 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  store i8 %44, ptr %45, align 1
  %46 = add nsw i32 %9, -100
  %47 = tail call zeroext i8 @_bin2bcd(i32 noundef %46) #14
  %48 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  store i8 %47, ptr %48, align 1
  %49 = and i32 %6, 134217727
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %60

51:                                               ; preds = %33
  %52 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %6, i32 5
  %53 = load i8, ptr %52, align 4
  %54 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %6, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr [7 x i8], ptr %3, i32 0, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = or i8 %58, %53
  store i8 %59, ptr %57, align 1
  br label %60

60:                                               ; preds = %51, %33
  %61 = load i32, ptr %5, align 4
  switch i32 %61, label %80 [
    i32 2, label %62
    i32 4, label %62
    i32 6, label %66
    i32 8, label %70
    i32 13, label %74
  ]

62:                                               ; preds = %60, %60
  %63 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 7, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %80

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 9, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %80

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 11, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %80

74:                                               ; preds = %60
  %75 = load i8, ptr %3, align 1
  %76 = or i8 %75, -128
  store i8 %76, ptr %3, align 1
  %77 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = or i8 %78, 8
  store i8 %79, ptr %77, align 1
  br label %80

80:                                               ; preds = %74, %70, %66, %62, %60
  %81 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %6, i32 3
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  %86 = call i32 @regmap_bulk_write(ptr noundef %82, i32 noundef %85, ptr noundef nonnull %3, i32 noundef 7) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load i32, ptr %5, align 4
  %90 = icmp eq i32 %89, 15
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load ptr, ptr %81, align 4
  %93 = call i32 @regmap_write(ptr noundef %92, i32 noundef 29, i32 noundef -3) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91, %80
  %96 = phi i32 [ %86, %80 ], [ %93, %91 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, i32 noundef %96) #13
  br label %97

97:                                               ; preds = %95, %91, %88, %2
  %98 = phi i32 [ -22, %2 ], [ 0, %91 ], [ 0, %88 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #12
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1337_read_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, i8 0, i32 9, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 7, ptr noundef nonnull %3, i32 noundef 9) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16, i32 noundef %8) #13
  br label %38

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = and i8 %12, 127
  %14 = call i32 @_bcd2bin(i8 noundef zeroext %13) #14
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 127
  %19 = call i32 @_bcd2bin(i8 noundef zeroext %18) #14
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 63
  %24 = call i32 @_bcd2bin(i8 noundef zeroext %23) #14
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 63
  %29 = call i32 @_bcd2bin(i8 noundef zeroext %28) #14
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 1
  store i8 %33, ptr %1, align 4
  %34 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 8
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %36, ptr %37, align 1
  br label %38

38:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1337_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, i8 0, i32 9, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 7, ptr noundef nonnull %3, i32 noundef 9) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, i32 noundef %8) #13
  br label %49

11:                                               ; preds = %2
  %12 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 8
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = call zeroext i8 @_bin2bcd(i32 noundef %17) #14
  store i8 %18, ptr %3, align 1
  %19 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = call zeroext i8 @_bin2bcd(i32 noundef %20) #14
  %22 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = call zeroext i8 @_bin2bcd(i32 noundef %24) #14
  %26 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 2
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = call zeroext i8 @_bin2bcd(i32 noundef %28) #14
  %30 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 3
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 4
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 5
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 6
  store i8 0, ptr %33, align 1
  %34 = and i8 %13, -4
  store i8 %34, ptr %12, align 1
  %35 = and i8 %15, -4
  store i8 %35, ptr %14, align 1
  %36 = load ptr, ptr %6, align 4
  %37 = call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef 7, ptr noundef nonnull %3, i32 noundef 9) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #13
  br label %49

40:                                               ; preds = %11
  %41 = load i8, ptr %1, align 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i8, ptr %12, align 1
  %45 = or i8 %44, 1
  store i8 %45, ptr %12, align 1
  %46 = load ptr, ptr %6, align 4
  %47 = zext i8 %45 to i32
  %48 = call i32 @regmap_write(ptr noundef %46, i32 noundef 14, i32 noundef %47) #12
  br label %49

49:                                               ; preds = %43, %40, %39, %10
  %50 = phi i32 [ %8, %10 ], [ %37, %39 ], [ 0, %43 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #12
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1307_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ds1307, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i32 %1, 0
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 14, i32 noundef 1, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m41txx_rtc_read_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 7, ptr noundef nonnull %3) #12
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 31
  %11 = and i32 %9, 32
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -2034, i32 4068
  %14 = mul nsw i32 %13, %10
  store i32 %14, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m41txx_rtc_set_offset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = add i32 %1, -126109
  %6 = icmp ult i32 %5, -189163
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = icmp eq i32 %1, 0
  %11 = add nuw nsw i32 %1, 2034
  %12 = udiv i32 %11, 4068
  %13 = or i32 %12, 32
  %14 = select i1 %10, i32 32, i32 %13
  br label %20

15:                                               ; preds = %7
  %16 = trunc i32 %1 to i16
  %17 = sub i16 1017, %16
  %18 = udiv i16 %17, 2034
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i32 [ %14, %9 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.ds1307, ptr %4, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 7, i32 noundef 63, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i32 [ %24, %20 ], [ -34, %2 ]
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp794xx_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 7, ptr noundef nonnull %3, i32 noundef 10) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = load i8, ptr %3, align 1
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 1
  store i8 %13, ptr %1, align 4
  %14 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 127
  %17 = call i32 @_bcd2bin(i8 noundef zeroext %16) #14
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 127
  %22 = call i32 @_bcd2bin(i8 noundef zeroext %21) #14
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 63
  %27 = call i32 @_bcd2bin(i8 noundef zeroext %26) #14
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 7
  %32 = call i32 @_bcd2bin(i8 noundef zeroext %31) #14
  %33 = add i32 %32, -1
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 7
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 63
  %38 = call i32 @_bcd2bin(i8 noundef zeroext %37) #14
  %39 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 8
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 31
  %43 = call i32 @_bcd2bin(i8 noundef zeroext %42) #14
  %44 = add i32 %43, -1
  %45 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 -1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 -1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  store i32 -1, ptr %48, align 4
  br label %49

49:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp794xx_set_alarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtc_time, align 4
  %6 = alloca [10 x i8], align 1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %6, i8 0, i32 10, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #12, !annotation !8
  %10 = call i32 @ds1307_get_time(ptr noundef %0, ptr noundef nonnull %5) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = call i64 @div_s64_rem(i64 noundef %13, i32 noundef 86400, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %15 = trunc i64 %14 to i32
  %16 = call i64 @rtc_tm_to_time64(ptr noundef %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = call i64 @div_s64_rem(i64 noundef %16, i32 noundef 86400, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.rtc_time, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %15
  %22 = add i32 %21, %20
  %23 = srem i32 %22, 7
  %24 = add nsw i32 %23, 1
  br label %25

25:                                               ; preds = %12, %2
  %26 = phi i32 [ %24, %12 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ds1307, ptr %8, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 7, ptr noundef nonnull %6, i32 noundef 10) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load i32, ptr %9, align 4
  %35 = call zeroext i8 @_bin2bcd(i32 noundef %34) #14
  %36 = getelementptr inbounds [10 x i8], ptr %6, i32 0, i32 3
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = call zeroext i8 @_bin2bcd(i32 noundef %38) #14
  %40 = getelementptr inbounds [10 x i8], ptr %6, i32 0, i32 4
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = call zeroext i8 @_bin2bcd(i32 noundef %42) #14
  %44 = getelementptr inbounds [10 x i8], ptr %6, i32 0, i32 5
  store i8 %43, ptr %44, align 1
  %45 = trunc i32 %26 to i8
  %46 = getelementptr inbounds [10 x i8], ptr %6, i32 0, i32 6
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = call zeroext i8 @_bin2bcd(i32 noundef %48) #14
  %50 = getelementptr inbounds [10 x i8], ptr %6, i32 0, i32 7
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  %54 = call zeroext i8 @_bin2bcd(i32 noundef %53) #14
  %55 = getelementptr inbounds [10 x i8], ptr %6, i32 0, i32 8
  store i8 %54, ptr %55, align 1
  %56 = and i8 %45, -121
  %57 = or i8 %56, 112
  store i8 %57, ptr %46, align 1
  %58 = load i8, ptr %6, align 1
  %59 = and i8 %58, -17
  store i8 %59, ptr %6, align 1
  %60 = load ptr, ptr %29, align 4
  %61 = call i32 @regmap_bulk_write(ptr noundef %60, i32 noundef 7, ptr noundef nonnull %6, i32 noundef 10) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %33
  %64 = load i8, ptr %1, align 4
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %6, align 1
  %68 = or i8 %67, 16
  store i8 %68, ptr %6, align 1
  %69 = load ptr, ptr %29, align 4
  %70 = zext i8 %68 to i32
  %71 = call i32 @regmap_write(ptr noundef %69, i32 noundef 7, i32 noundef %70) #12
  br label %72

72:                                               ; preds = %66, %63, %33, %28, %25
  %73 = phi i32 [ %71, %66 ], [ %26, %25 ], [ %31, %28 ], [ %61, %33 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #12
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp794xx_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ds1307, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 16
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 7, i32 noundef 16, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8130_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ds1307, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 23, ptr noundef nonnull %3, i32 noundef 3) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 4
  %13 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 28, ptr noundef nonnull %4, i32 noundef 3) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = lshr i8 %17, 3
  %19 = and i8 %18, 1
  store i8 %19, ptr %1, align 4
  %20 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = lshr i8 %21, 3
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 -1, ptr %25, align 4
  %26 = load i8, ptr %3, align 1
  %27 = and i8 %26, 127
  %28 = call i32 @_bcd2bin(i8 noundef zeroext %27) #14
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 127
  %33 = call i32 @_bcd2bin(i8 noundef zeroext %32) #14
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 -1, ptr %35, align 4
  %36 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 127
  %39 = call i32 @_bcd2bin(i8 noundef zeroext %38) #14
  %40 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 -1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 -1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 -1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  store i32 -1, ptr %44, align 4
  br label %45

45:                                               ; preds = %15, %11, %2
  %46 = phi i32 [ 0, %15 ], [ %9, %2 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #12
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8130_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ds1307, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %4, i32 noundef 3) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %2
  %12 = load i8, ptr %4, align 1
  %13 = and i8 %12, 8
  store i8 %13, ptr %4, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, -9
  store i8 %16, ptr %14, align 1
  %17 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, -9
  store i8 %19, ptr %17, align 1
  %20 = load ptr, ptr %7, align 4
  %21 = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef 28, ptr noundef nonnull %4, i32 noundef 3) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = call zeroext i8 @_bin2bcd(i32 noundef %25) #14
  store i8 %26, ptr %3, align 1
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = call zeroext i8 @_bin2bcd(i32 noundef %28) #14
  %30 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = call zeroext i8 @_bin2bcd(i32 noundef %32) #14
  %34 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 %33, ptr %34, align 1
  %35 = load ptr, ptr %7, align 4
  %36 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 23, ptr noundef nonnull %3, i32 noundef 3) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %23
  %39 = load i8, ptr %1, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8, ptr %17, align 1
  %43 = or i8 %42, 8
  store i8 %43, ptr %17, align 1
  %44 = load ptr, ptr %7, align 4
  %45 = zext i8 %43 to i32
  %46 = call i32 @regmap_write(ptr noundef %44, i32 noundef 30, i32 noundef %45) #12
  br label %47

47:                                               ; preds = %41, %38, %23, %11, %2
  %48 = phi i32 [ %46, %41 ], [ %9, %2 ], [ %21, %11 ], [ %36, %23 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #12
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8130_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 30, ptr noundef nonnull %3) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, -9
  %14 = select i1 %11, i32 0, i32 8
  %15 = or i32 %13, %14
  store i32 %15, ptr %3, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = call i32 @regmap_write(ptr noundef %16, i32 noundef 30, i32 noundef %15) #12
  br label %18

18:                                               ; preds = %10, %2
  %19 = phi i32 [ %17, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @frequency_test_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.ds1307, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 7, ptr noundef nonnull %4) #12
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.25, ptr @.str.24
  %16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @frequency_test_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1, !annotation !8
  %10 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26) #13
  br label %20

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ds1307, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %5, align 1, !range !10
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 64
  %19 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 7, i32 noundef 64, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %20

20:                                               ; preds = %13, %12
  %21 = phi i32 [ %10, %12 ], [ %3, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_hwmon_show_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.ds1307, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 17, ptr noundef nonnull %4, i32 noundef 2) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  br label %24

12:                                               ; preds = %3
  %13 = load i8, ptr %4, align 2
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  %19 = or i16 %15, %18
  %20 = ashr i16 %19, 6
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %21, 250
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %22)
  br label %24

24:                                               ; preds = %12, %11
  %25 = phi i32 [ %23, %12 ], [ %9, %11 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 14, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ds3231_clk_sqw_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 14, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 14, ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %2, align 4
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = select i1 %6, i32 %10, i32 %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 14, ptr noundef nonnull %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = lshr i32 %9, 3
  %11 = and i32 %10, 3
  %12 = getelementptr [4 x i32], ptr @ds3231_clk_sqw_rates, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ %13, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #11 {
  %4 = icmp ult i32 %1, 8192
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = icmp ult i32 %1, 4096
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = icmp ult i32 %1, 1024
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = icmp ne i32 %1, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %7, %5, %3
  %13 = phi i32 [ 8192, %3 ], [ 4096, %5 ], [ 1024, %7 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %1, label %15 [
    i32 1, label %7
    i32 1024, label %4
    i32 4096, label %5
    i32 8192, label %6
  ]

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5, %4, %3
  %8 = phi i32 [ 0, %3 ], [ 8, %4 ], [ 16, %5 ], [ 24, %6 ]
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %11) #12
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 14, i32 noundef 24, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %11) #12
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %14, %7 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_clk_32khz_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 15, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ds3231_clk_32khz_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3231_clk_32khz_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 15, ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %2, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  %10 = select i1 %6, i32 %9, i32 %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ds3231_clk_32khz_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  %5 = getelementptr inbounds %struct.ds1307, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 11, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  store i8 0, ptr %2, align 2
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #14
  %17 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %5, align 4
  %19 = call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 8, ptr noundef nonnull %2, i32 noundef 2) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load ptr, ptr %5, align 4
  %23 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 12, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %24

24:                                               ; preds = %21, %13, %9, %1
  %25 = phi i32 [ %23, %21 ], [ %7, %1 ], [ %11, %9 ], [ %19, %13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ds1307, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.ds1307, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %2, i32 noundef 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %6, align 4
  store i8 0, ptr %3, align 2
  %7 = tail call zeroext i8 @_bin2bcd(i32 noundef %1) #14
  %8 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.ds1307, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
