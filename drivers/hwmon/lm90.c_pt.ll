; ModuleID = '/llk/IR/drivers/hwmon/lm90.c_pt.bc'
source_filename = "../drivers/hwmon/lm90.c"
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
%struct.lm90_params = type { i32, i16, i8, i8 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.reg = type { i8, i8 }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.lm90_data = type { ptr, ptr, [4 x i32], %struct.hwmon_channel_info, [3 x ptr], %struct.hwmon_chip_info, %struct.mutex, i8, i32, i32, i32, i32, i8, i8, i8, i16, i8, i8, [8 x i8], [8 x i16], i8, i16 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_lm90__259_2067_lm90_driver_init6 = internal global ptr @lm90_driver_init, section ".initcall6.init", align 4
@lm90_driver = internal global %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm90_probe, ptr null, ptr @lm90_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm90_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm90_pm_ops, ptr null, ptr null }, ptr @lm90_id, ptr @lm90_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_lm90_driver_exit = internal global ptr @lm90_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [44 x i8] c"lm90.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [37 x i8] c"lm90.description=LM90/ADM1032 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [29 x i8] c"lm90.file=drivers/hwmon/lm90\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [17 x i8] c"lm90.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"lm90\00", align 1
@lm90_of_match = internal constant [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adm1032\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7461\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7461a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gmt,g781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm89\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6646\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6647\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6649\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6654\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6657\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6658\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6659\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6680\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6681\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6695\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6696\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,nct1008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,w83l771\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sa56004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp451\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp461\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@lm90_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @lm90_suspend, ptr @lm90_resume, ptr @lm90_suspend, ptr @lm90_resume, ptr @lm90_suspend, ptr @lm90_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lm90_id = internal constant [25 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1032\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adt7461\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"adt7461a\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"g781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"lm89\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"lm99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max6646\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6647\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6649\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6654\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"max6657\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max6658\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max6659\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max6680\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max6681\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max6695\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"max6696\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"nct1008\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"w83l771\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"sa56004\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"tmp451\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"tmp461\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id zeroinitializer], align 4
@normal_i2c = internal constant [15 x i16] [i16 24, i16 25, i16 26, i16 41, i16 42, i16 43, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 -2], align 2
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator: %d\0A\00", align 1
@lm90_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"&data->update_lock\00", align 1
@lm90_params = internal unnamed_addr constant [16 x %struct.lm90_params] [%struct.lm90_params { i32 1034, i16 123, i8 9, i8 0 }, %struct.lm90_params { i32 1162, i16 124, i8 10, i8 0 }, %struct.lm90_params { i32 1034, i16 123, i8 9, i8 0 }, %struct.lm90_params { i32 1034, i16 123, i8 9, i8 0 }, %struct.lm90_params { i32 1536, i16 124, i8 8, i8 17 }, %struct.lm90_params { i32 1040, i16 124, i8 8, i8 17 }, %struct.lm90_params { i32 1418, i16 124, i8 10, i8 0 }, %struct.lm90_params { i32 3202, i16 124, i8 7, i8 0 }, %struct.lm90_params { i32 1152, i16 124, i8 6, i8 17 }, %struct.lm90_params { i32 1034, i16 124, i8 8, i8 0 }, %struct.lm90_params { i32 1136, i16 7292, i8 6, i8 17 }, %struct.lm90_params { i32 1034, i16 123, i8 9, i8 34 }, %struct.lm90_params { i32 1162, i16 124, i8 7, i8 0 }, %struct.lm90_params { i32 1418, i16 124, i8 9, i8 21 }, %struct.lm90_params { i32 1418, i16 124, i8 9, i8 21 }, %struct.lm90_params { i32 128, i16 124, i8 7, i8 17 }], align 4
@lm90_ops = internal constant %struct.hwmon_ops { ptr @lm90_is_visible, ptr @lm90_read, ptr null, ptr @lm90_write }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to initialize device\0A\00", align 1
@dev_attr_pec = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @pec_show, ptr @pec_store }, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot request IRQ %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@lm90_temp_index = internal unnamed_addr constant [3 x i8] c"\04\00\05", align 1
@lm90_min_alarm_bits = internal unnamed_addr constant [3 x i8] c"\05\03\0B", align 1
@lm90_max_alarm_bits = internal unnamed_addr constant [3 x i8] c"\06\04\0C", align 1
@lm90_crit_alarm_bits_swapped = internal unnamed_addr constant [3 x i8] c"\01\00\09", align 1
@lm90_crit_alarm_bits = internal unnamed_addr constant [3 x i8] c"\00\01\09", align 1
@lm90_emergency_alarm_bits = internal unnamed_addr constant [3 x i8] c"\0F\0D\0E", align 1
@lm90_fault_bits = internal unnamed_addr constant [3 x i8] c"\00\02\0A", align 1
@lm90_temp_min_index = internal unnamed_addr constant [3 x i8] c"\00\01\06", align 1
@lm90_temp_max_index = internal unnamed_addr constant [3 x i8] c"\01\02\07", align 1
@lm90_temp_crit_index = internal unnamed_addr constant [3 x i8] c"\02\03\06", align 1
@lm90_temp_emerg_index = internal unnamed_addr constant [3 x i8] c"\04\05\07", align 1
@lm90_set_temp8.reg = internal unnamed_addr constant [8 x i8] c"\0C\0B \19\17\16\19\16", align 1
@lm90_set_temp11.reg = internal unnamed_addr constant [8 x %struct.reg] [%struct.reg zeroinitializer, %struct.reg { i8 14, i8 20 }, %struct.reg { i8 13, i8 19 }, %struct.reg { i8 17, i8 18 }, %struct.reg zeroinitializer, %struct.reg zeroinitializer, %struct.reg { i8 14, i8 20 }, %struct.reg { i8 13, i8 19 }], align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pec\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"lm99\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Assuming LM99 chip at 0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"If it is an LM89, instantiate it with the new_device sysfs interface\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"lm86\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"adm1032\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"adt7461\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"adt7461a\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"max6657\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"max6659\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"max6696\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"max6680\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"max6646\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"max6654\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"w83l771\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sa56004\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"g781\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"tmp451\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"tmp461\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_lm90_driver_exit, ptr @__initcall__kmod_lm90__259_2067_lm90_driver_init6, ptr @lm90_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lm90_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm90_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @lm90_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @lm90_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.hwmon_channel_info, align 4
  %3 = alloca [2 x i32], align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.1) #10
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %214

11:                                               ; preds = %1
  %12 = tail call i32 @regulator_enable(ptr noundef %7) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %12) #11
  br label %214

15:                                               ; preds = %11
  %16 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @lm90_regulator_disable, ptr noundef %7) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @regulator_disable(ptr noundef %7) #10
  br label %214

20:                                               ; preds = %15
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 128, i32 noundef 3520) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %214, label %23

23:                                               ; preds = %20
  store ptr %0, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @lm90_probe.__key) #10
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @of_device_get_match_data(ptr noundef %4) #10
  %31 = ptrtoint ptr %30 to i32
  br label %36

32:                                               ; preds = %23
  %33 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm90_id, ptr noundef %0) #10
  %34 = getelementptr inbounds %struct.i2c_device_id, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %35, %32 ], [ %31, %29 ]
  %38 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 9
  store i32 %37, ptr %38, align 4
  %39 = icmp eq i32 %37, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.i2c_algorithm, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %6) #10
  %46 = and i32 %45, 393216
  %47 = icmp eq i32 %46, 393216
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i16, ptr %0, align 8
  %50 = and i16 %49, -5
  store i16 %50, ptr %0, align 8
  br label %51

51:                                               ; preds = %48, %40, %36
  %52 = load i32, ptr %38, align 4
  %53 = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %52, i32 1
  %54 = load i16, ptr %53, align 4
  %55 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 15
  store i16 %54, ptr %55, align 4
  %56 = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %52
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 10
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 5
  store ptr @lm90_ops, ptr %59, align 4
  %60 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 4
  %61 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 5, i32 1
  store ptr %60, ptr %61, align 4
  store i32 0, ptr %2, align 4
  %62 = getelementptr inbounds %struct.hwmon_channel_info, ptr %2, i32 0, i32 1
  store i32 112, ptr %3, align 4
  %63 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 0, ptr %63, align 4
  store ptr %3, ptr %62, align 4
  store ptr %2, ptr %60, align 4
  %64 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 3
  %65 = getelementptr %struct.lm90_data, ptr %21, i32 0, i32 4, i32 1
  store ptr %64, ptr %65, align 4
  store i32 1, ptr %64, align 4
  %66 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 2
  %67 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 3, i32 1
  store ptr %66, ptr %67, align 4
  store i32 98466, ptr %66, align 4
  %68 = getelementptr %struct.lm90_data, ptr %21, i32 0, i32 2, i32 1
  store i32 622754, ptr %68, align 4
  %69 = and i32 %57, 1024
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %51
  store i32 231074, ptr %66, align 4
  store i32 755362, ptr %68, align 4
  br label %72

72:                                               ; preds = %71, %51
  %73 = phi i32 [ 231074, %71 ], [ 98466, %51 ]
  %74 = phi i32 [ 755362, %71 ], [ 622754, %51 ]
  %75 = and i32 %57, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = or i32 %74, 1048576
  store i32 %78, ptr %68, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ %78, %77 ], [ %74, %72 ]
  %81 = and i32 %57, 16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = or i32 %73, 6144
  store i32 %84, ptr %66, align 4
  %85 = or i32 %80, 6144
  store i32 %85, ptr %68, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i32 [ %85, %83 ], [ %80, %79 ]
  %88 = phi i32 [ %84, %83 ], [ %73, %79 ]
  %89 = and i32 %57, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = or i32 %88, 262144
  store i32 %92, ptr %66, align 4
  %93 = or i32 %87, 262144
  store i32 %93, ptr %68, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = and i32 %57, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = getelementptr %struct.lm90_data, ptr %21, i32 0, i32 2, i32 2
  store i32 1023650, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %52, i32 3
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 17
  store i8 %101, ptr %102, align 1
  %103 = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %52, i32 2
  %104 = load i8, ptr %103, align 2
  %105 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 16
  store i8 %104, ptr %105, align 2
  %106 = load i16, ptr %0, align 8
  %107 = and i16 %106, 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %99
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %112 = load i16, ptr %111, align 2
  %113 = and i16 %106, -5
  %114 = call i32 @i2c_smbus_xfer(ptr noundef %110, i16 noundef zeroext %112, i16 noundef zeroext %113, i8 noundef zeroext 0, i8 noundef zeroext 4, i32 noundef 1, ptr noundef null) #10
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %116, label %186

116:                                              ; preds = %109
  %117 = call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %120

118:                                              ; preds = %99
  %119 = call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 4) #10
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %186, label %123

123:                                              ; preds = %120
  %124 = trunc i32 %121 to i8
  %125 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 14
  store i8 %124, ptr %125, align 2
  %126 = load i16, ptr %0, align 8
  %127 = and i16 %126, 4
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = and i16 %126, -5
  %134 = call i32 @i2c_smbus_xfer(ptr noundef %130, i16 noundef zeroext %132, i16 noundef zeroext %133, i8 noundef zeroext 0, i8 noundef zeroext 3, i32 noundef 1, ptr noundef null) #10
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %136, label %186

136:                                              ; preds = %129
  %137 = call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %140

138:                                              ; preds = %123
  %139 = call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 3) #10
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %186, label %143

143:                                              ; preds = %140
  %144 = trunc i32 %141 to i8
  %145 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 13
  store i8 %144, ptr %145, align 1
  %146 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 12
  store i8 %144, ptr %146, align 4
  %147 = call fastcc i32 @lm90_set_convrate(ptr noundef nonnull %21, i32 noundef 500) #10
  %148 = load i32, ptr %58, align 4
  %149 = and i32 %148, 256
  %150 = icmp eq i32 %149, 0
  %151 = and i32 %141, 4
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %156, label %154

154:                                              ; preds = %143
  %155 = or i32 %148, 1
  store i32 %155, ptr %58, align 4
  br label %156

156:                                              ; preds = %154, %143
  %157 = load i32, ptr %38, align 4
  %158 = icmp eq i32 %157, 7
  %159 = or i32 %141, 24
  %160 = select i1 %158, i32 %159, i32 %141
  %161 = icmp eq i32 %157, 15
  %162 = or i32 %160, 32
  %163 = select i1 %161, i32 %162, i32 %160
  %164 = icmp eq i32 %157, 10
  %165 = and i32 %163, -9
  %166 = select i1 %164, i32 %165, i32 %163
  %167 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  %170 = and i32 %166, 63
  %171 = select i1 %169, i32 %166, i32 %170
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, -65
  %174 = load i8, ptr %146, align 4
  %175 = icmp eq i8 %174, %173
  br i1 %175, label %181, label %176

176:                                              ; preds = %156
  %177 = load ptr, ptr %21, align 4
  %178 = call i32 @i2c_smbus_write_byte_data(ptr noundef %177, i8 noundef zeroext 9, i8 noundef zeroext %173) #10
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i8 %173, ptr %146, align 4
  br label %181

181:                                              ; preds = %180, %176, %156
  %182 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @lm90_restore_conf, ptr noundef nonnull %21) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  call void @lm90_restore_conf(ptr noundef nonnull %21) #10, !callees !8
  %185 = icmp slt i32 %182, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %184, %140, %129, %120, %109
  %187 = phi i32 [ %182, %184 ], [ %134, %129 ], [ %114, %109 ], [ %141, %140 ], [ %121, %120 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  br label %214

188:                                              ; preds = %184, %181
  %189 = load i16, ptr %0, align 8
  %190 = and i16 %189, 4
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %188
  %193 = call i32 @device_create_file(ptr noundef %4, ptr noundef nonnull @dev_attr_pec) #10
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %192
  %196 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @lm90_remove_pec, ptr noundef %4) #10
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_pec) #10
  br label %214

199:                                              ; preds = %195, %188
  %200 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %201 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %4, ptr noundef %200, ptr noundef nonnull %21, ptr noundef %59, ptr noundef null) #10
  %202 = icmp ugt ptr %201, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = ptrtoint ptr %201 to i32
  br label %214

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.lm90_data, ptr %21, i32 0, i32 1
  store ptr %201, ptr %206, align 4
  %207 = load i32, ptr %167, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %207, ptr noundef null, ptr noundef nonnull @lm90_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %0) #10
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, ptr %167, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %213) #11
  br label %214

214:                                              ; preds = %212, %209, %205, %203, %198, %192, %186, %20, %18, %14, %9
  %215 = phi i32 [ %10, %9 ], [ %12, %14 ], [ %187, %186 ], [ %204, %203 ], [ %210, %212 ], [ %16, %18 ], [ -12, %20 ], [ %193, %192 ], [ %196, %198 ], [ 0, %209 ], [ 0, %205 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lm90_alert(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !9
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = call fastcc zeroext i1 @lm90_is_tripped(ptr noundef %0, ptr noundef nonnull %4)
  br i1 %7, label %8, label %31

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.lm90_data, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %8
  %16 = load i16, ptr %4, align 2
  %17 = getelementptr inbounds %struct.lm90_data, ptr %10, i32 0, i32 15
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, %16
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lm90_data, ptr %10, i32 0, i32 12
  %23 = load i8, ptr %22, align 4
  %24 = or i8 %23, -128
  %25 = icmp eq i8 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %10, align 4
  %28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 9, i8 noundef zeroext %24) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 %24, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %26, %21, %15, %8, %6, %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_detect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %4) #10
  %13 = and i32 %12, 1572864
  %14 = icmp eq i32 %13, 1572864
  br i1 %14, label %15, label %223

15:                                               ; preds = %2
  %16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -2) #10
  %17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -1) #10
  %18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 3) #10
  %19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 4) #10
  %20 = icmp slt i32 %16, 0
  %21 = icmp slt i32 %17, 0
  %22 = select i1 %20, i1 true, i1 %21
  %23 = icmp slt i32 %18, 0
  %24 = select i1 %22, i1 true, i1 %23
  %25 = icmp slt i32 %19, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %223, label %27

27:                                               ; preds = %15
  %28 = icmp eq i32 %16, 1
  %29 = icmp eq i32 %16, 92
  %30 = icmp eq i32 %16, 161
  switch i32 %16, label %34 [
    i32 161, label %31
    i32 92, label %31
    i32 1, label %31
  ]

31:                                               ; preds = %27, %27, %27
  %32 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -65) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %223, label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %32, %31 ], [ 0, %27 ]
  %36 = icmp eq i16 %6, 76
  %37 = and i16 %6, -2
  %38 = icmp eq i16 %37, 76
  %39 = select i1 %38, i1 %28, i1 false
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = and i32 %18, 42
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %223

43:                                               ; preds = %40
  %44 = and i32 %35, 248
  %45 = icmp eq i32 %44, 0
  %46 = icmp ult i32 %19, 10
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %223

48:                                               ; preds = %43
  %49 = and i32 %17, 240
  %50 = icmp eq i32 %49, 32
  %51 = select i1 %36, i1 %50, i1 false
  br i1 %51, label %220, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %49, 48
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.9, i32 noundef %7) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.10) #11
  br label %220

56:                                               ; preds = %52
  %57 = icmp eq i32 %49, 16
  %58 = select i1 %36, i1 %57, i1 false
  br i1 %58, label %220, label %223

59:                                               ; preds = %34
  %60 = icmp eq i32 %16, 65
  %61 = select i1 %38, i1 %60, i1 false
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = and i32 %17, 240
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = and i32 %18, 63
  %67 = icmp eq i32 %66, 0
  %68 = icmp ult i32 %19, 11
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load ptr, ptr %8, align 8
  %72 = getelementptr inbounds %struct.i2c_algorithm, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef %4) #10
  %75 = and i32 %74, 393216
  %76 = icmp eq i32 %75, 393216
  br i1 %76, label %77, label %220

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 1
  %79 = load i16, ptr %78, align 4
  %80 = or i16 %79, 4
  store i16 %80, ptr %78, align 4
  br label %220

81:                                               ; preds = %65, %62
  switch i32 %17, label %223 [
    i32 81, label %82
    i32 87, label %87
  ]

82:                                               ; preds = %81
  %83 = and i32 %18, 27
  %84 = icmp eq i32 %83, 0
  %85 = icmp ult i32 %19, 11
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %220, label %223

87:                                               ; preds = %81
  %88 = and i32 %18, 27
  %89 = icmp eq i32 %88, 0
  %90 = icmp ult i32 %19, 11
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %220, label %223

92:                                               ; preds = %59
  %93 = icmp eq i32 %16, 77
  br i1 %93, label %94, label %148

94:                                               ; preds = %92
  %95 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 22) #10
  %96 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -2) #10
  %97 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 22) #10
  %98 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 18) #10
  %99 = icmp slt i32 %95, 0
  %100 = icmp slt i32 %96, 0
  %101 = select i1 %99, i1 true, i1 %100
  %102 = icmp slt i32 %97, 0
  %103 = select i1 %101, i1 true, i1 %102
  %104 = icmp slt i32 %98, 0
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %223, label %106

106:                                              ; preds = %94
  %107 = icmp eq i32 %17, %96
  %108 = add i16 %6, -76
  %109 = icmp ult i16 %108, 3
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = and i32 %18, 31
  %113 = and i32 %17, 15
  %114 = icmp eq i32 %112, %113
  %115 = icmp ult i32 %19, 10
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = select i1 %36, ptr @.str.15, ptr @.str.16
  br label %220

119:                                              ; preds = %111, %106
  %120 = icmp eq i32 %17, 1
  %121 = and i32 %18, 16
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  %124 = and i32 %98, 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = icmp eq i32 %95, %97
  %129 = icmp ult i32 %19, 8
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %220, label %131

131:                                              ; preds = %127, %119
  br i1 %120, label %132, label %137

132:                                              ; preds = %131
  %133 = and i32 %18, 3
  %134 = icmp eq i32 %133, 0
  %135 = icmp ult i32 %19, 8
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %220, label %223

137:                                              ; preds = %131
  switch i32 %17, label %223 [
    i32 89, label %138
    i32 8, label %143
  ]

138:                                              ; preds = %137
  %139 = and i32 %18, 63
  %140 = icmp eq i32 %139, 0
  %141 = icmp ult i32 %19, 8
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %220, label %223

143:                                              ; preds = %137
  %144 = and i32 %18, 7
  %145 = icmp eq i32 %144, 0
  %146 = icmp ult i32 %19, 8
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %220, label %223

148:                                              ; preds = %92
  %149 = select i1 %36, i1 %29, i1 false
  br i1 %149, label %150, label %165

150:                                              ; preds = %148
  %151 = and i32 %18, 42
  %152 = icmp eq i32 %151, 0
  %153 = and i32 %35, 248
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %223

156:                                              ; preds = %150
  %157 = icmp eq i32 %17, 1
  %158 = icmp ult i32 %19, 10
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %220, label %160

160:                                              ; preds = %156
  %161 = and i32 %17, 254
  %162 = icmp eq i32 %161, 16
  %163 = icmp ult i32 %19, 9
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %220, label %223

165:                                              ; preds = %148
  %166 = and i16 %6, -8
  %167 = icmp eq i16 %166, 72
  %168 = select i1 %167, i1 %30, i1 false
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = icmp eq i32 %17, 0
  %171 = and i32 %18, 42
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %174, label %223

174:                                              ; preds = %169
  %175 = and i32 %35, 254
  %176 = icmp eq i32 %175, 0
  %177 = icmp ult i32 %19, 10
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %220, label %223

179:                                              ; preds = %165
  %180 = icmp eq i32 %16, 71
  %181 = select i1 %38, i1 %180, i1 false
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = icmp eq i32 %17, 1
  br i1 %183, label %184, label %223

184:                                              ; preds = %182
  %185 = and i32 %18, 63
  %186 = icmp eq i32 %185, 0
  %187 = icmp ult i32 %19, 9
  %188 = select i1 %186, i1 %187, i1 false
  br i1 %188, label %220, label %223

189:                                              ; preds = %179
  %190 = icmp eq i32 %16, 85
  %191 = icmp eq i32 %17, 0
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %223

193:                                              ; preds = %189
  %194 = and i32 %18, 27
  %195 = icmp eq i32 %194, 0
  %196 = icmp ult i32 %19, 10
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %223

198:                                              ; preds = %193
  %199 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 21) #10
  %200 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 34) #10
  %201 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 22) #10
  %202 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 36) #10
  %203 = and i32 %199, 15
  %204 = icmp eq i32 %203, 0
  %205 = and i32 %200, 241
  %206 = icmp eq i32 %205, 1
  %207 = select i1 %204, i1 %206, i1 false
  %208 = and i32 %201, 252
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %207, i1 %209, i1 false
  %211 = and i32 %202, 252
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %223

214:                                              ; preds = %198
  %215 = and i32 %201, 3
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %36, i1 %216, i1 false
  %218 = or i1 %217, %167
  %219 = select i1 %217, ptr @.str.24, ptr @.str.25
  br i1 %218, label %220, label %223

220:                                              ; preds = %214, %184, %174, %160, %156, %143, %138, %132, %127, %117, %87, %82, %77, %70, %56, %54, %48
  %221 = phi ptr [ @.str.21, %156 ], [ @.str.13, %82 ], [ @.str, %48 ], [ @.str.12, %70 ], [ @.str.12, %77 ], [ @.str.8, %54 ], [ @.str.14, %87 ], [ @.str.21, %160 ], [ @.str.22, %174 ], [ @.str.23, %184 ], [ @.str.11, %56 ], [ %219, %214 ], [ %118, %117 ], [ @.str.17, %127 ], [ @.str.18, %132 ], [ @.str.19, %138 ], [ @.str.20, %143 ]
  %222 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull %221, i32 noundef 20) #10
  br label %223

223:                                              ; preds = %220, %214, %198, %193, %189, %184, %182, %174, %169, %160, %150, %143, %138, %137, %132, %94, %87, %82, %81, %56, %43, %40, %31, %15, %2
  %224 = phi i32 [ 0, %220 ], [ -19, %2 ], [ -19, %15 ], [ -19, %31 ], [ -19, %94 ], [ -19, %43 ], [ -19, %40 ], [ -19, %150 ], [ -19, %169 ], [ -19, %182 ], [ -19, %193 ], [ -19, %189 ], [ -19, %81 ], [ -19, %87 ], [ -19, %160 ], [ -19, %174 ], [ -19, %184 ], [ -19, %198 ], [ -19, %56 ], [ -19, %82 ], [ -19, %143 ], [ -19, %137 ], [ -19, %132 ], [ -19, %138 ], [ -19, %214 ]
  ret i32 %224
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lm90_regulator_disable(ptr noundef %0) #2 {
  %2 = tail call i32 @regulator_disable(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lm90_remove_pec(ptr noundef %0) #2 {
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull @dev_attr_pec) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %4 = call fastcc zeroext i1 @lm90_is_tripped(ptr noundef %1, ptr noundef nonnull %3)
  %5 = zext i1 %4 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm90_is_visible(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  switch i32 %1, label %16 [
    i32 0, label %5
    i32 1, label %10
  ]

5:                                                ; preds = %4
  %6 = icmp eq i32 %2, 6
  %7 = select i1 %6, i16 292, i16 0
  %8 = icmp eq i32 %2, 5
  %9 = select i1 %8, i16 420, i16 %7
  br label %16

10:                                               ; preds = %4
  switch i32 %2, label %15 [
    i32 1, label %16
    i32 15, label %16
    i32 16, label %16
    i32 17, label %16
    i32 18, label %16
    i32 12, label %16
    i32 19, label %16
    i32 5, label %11
    i32 7, label %11
    i32 9, label %11
    i32 11, label %11
    i32 20, label %11
    i32 10, label %12
  ]

11:                                               ; preds = %10, %10, %10, %10, %10
  br label %16

12:                                               ; preds = %10
  %13 = icmp eq i32 %3, 0
  %14 = select i1 %13, i16 420, i16 292
  br label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %12, %11, %10, %10, %10, %10, %10, %10, %10, %5, %4
  %17 = phi i16 [ %9, %5 ], [ 0, %4 ], [ 0, %15 ], [ 420, %11 ], [ 292, %10 ], [ 292, %10 ], [ 292, %10 ], [ 292, %10 ], [ 292, %10 ], [ 292, %10 ], [ 292, %10 ], [ %14, %12 ]
  ret i16 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #2 {
  switch i32 %1, label %457 [
    i32 0, label %6
    i32 1, label %20
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.lm90_data, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = tail call fastcc i32 @lm90_update_device(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %457

12:                                               ; preds = %6
  switch i32 %2, label %457 [
    i32 5, label %13
    i32 6, label %16
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.lm90_data, ptr %8, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  br label %455

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.lm90_data, ptr %8, i32 0, i32 21
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  br label %455

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %23) #10
  %24 = tail call fastcc i32 @lm90_update_device(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %457

26:                                               ; preds = %20
  switch i32 %2, label %457 [
    i32 1, label %27
    i32 15, label %70
    i32 16, label %79
    i32 17, label %88
    i32 18, label %108
    i32 19, label %117
    i32 5, label %126
    i32 7, label %198
    i32 9, label %270
    i32 10, label %309
    i32 11, label %355
    i32 12, label %385
    i32 20, label %424
  ]

27:                                               ; preds = %26
  %28 = getelementptr [3 x i8], ptr @lm90_temp_index, i32 0, i32 %3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 19, i32 %30
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = and i32 %34, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = zext i16 %32 to i32
  %42 = add nsw i32 %41, -16384
  %43 = sdiv i32 %42, 64
  %44 = mul nsw i32 %43, 250
  br label %61

45:                                               ; preds = %37
  %46 = sdiv i16 %32, 32
  %47 = sext i16 %46 to i32
  %48 = mul nsw i32 %47, 125
  br label %61

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = lshr i16 %32, 5
  %55 = zext i16 %54 to i32
  %56 = mul nuw nsw i32 %55, 125
  br label %61

57:                                               ; preds = %49
  %58 = sdiv i16 %32, 32
  %59 = sext i16 %58 to i32
  %60 = mul nsw i32 %59, 125
  br label %61

61:                                               ; preds = %57, %53, %45, %40
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ], [ %44, %40 ], [ %48, %45 ]
  %63 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 2
  %66 = icmp eq i32 %3, 1
  %67 = and i1 %66, %65
  %68 = add nsw i32 %62, 16000
  %69 = select i1 %67, i32 %68, i32 %62
  br label %455

70:                                               ; preds = %26
  %71 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 21
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr [3 x i8], ptr @lm90_min_alarm_bits, i32 0, i32 %3
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = lshr i32 %73, %76
  %78 = and i32 %77, 1
  br label %455

79:                                               ; preds = %26
  %80 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 21
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = getelementptr [3 x i8], ptr @lm90_max_alarm_bits, i32 0, i32 %3
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = lshr i32 %82, %85
  %87 = and i32 %86, 1
  br label %455

88:                                               ; preds = %26
  %89 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 2048
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 21
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  br i1 %92, label %102, label %96

96:                                               ; preds = %88
  %97 = getelementptr [3 x i8], ptr @lm90_crit_alarm_bits_swapped, i32 0, i32 %3
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = lshr i32 %95, %99
  %101 = and i32 %100, 1
  br label %455

102:                                              ; preds = %88
  %103 = getelementptr [3 x i8], ptr @lm90_crit_alarm_bits, i32 0, i32 %3
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = lshr i32 %95, %105
  %107 = and i32 %106, 1
  br label %455

108:                                              ; preds = %26
  %109 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 21
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr [3 x i8], ptr @lm90_emergency_alarm_bits, i32 0, i32 %3
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = lshr i32 %111, %114
  %116 = and i32 %115, 1
  br label %455

117:                                              ; preds = %26
  %118 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 21
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr [3 x i8], ptr @lm90_fault_bits, i32 0, i32 %3
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = lshr i32 %120, %123
  %125 = and i32 %124, 1
  br label %455

126:                                              ; preds = %26
  %127 = icmp eq i32 %3, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %126
  %129 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 0
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 256
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %128
  %136 = and i32 %132, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = zext i8 %130 to i32
  %140 = mul nuw nsw i32 %139, 1000
  %141 = add nsw i32 %140, -64000
  br label %455

142:                                              ; preds = %135
  %143 = sext i8 %130 to i32
  %144 = mul nsw i32 %143, 1000
  br label %455

145:                                              ; preds = %128
  %146 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = zext i8 %130 to i32
  %151 = mul nuw nsw i32 %150, 1000
  br label %455

152:                                              ; preds = %145
  %153 = sext i8 %130 to i32
  %154 = mul nsw i32 %153, 1000
  br label %455

155:                                              ; preds = %126
  %156 = getelementptr [3 x i8], ptr @lm90_temp_min_index, i32 0, i32 %3
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 19, i32 %158
  %160 = load i16, ptr %159, align 2
  %161 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 256
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %155
  %166 = and i32 %162, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  %169 = zext i16 %160 to i32
  %170 = add nsw i32 %169, -16384
  %171 = sdiv i32 %170, 64
  %172 = mul nsw i32 %171, 250
  br label %189

173:                                              ; preds = %165
  %174 = sdiv i16 %160, 32
  %175 = sext i16 %174 to i32
  %176 = mul nsw i32 %175, 125
  br label %189

177:                                              ; preds = %155
  %178 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 8
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = lshr i16 %160, 5
  %183 = zext i16 %182 to i32
  %184 = mul nuw nsw i32 %183, 125
  br label %189

185:                                              ; preds = %177
  %186 = sdiv i16 %160, 32
  %187 = sext i16 %186 to i32
  %188 = mul nsw i32 %187, 125
  br label %189

189:                                              ; preds = %185, %181, %173, %168
  %190 = phi i32 [ %184, %181 ], [ %188, %185 ], [ %172, %168 ], [ %176, %173 ]
  %191 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 2
  %194 = icmp eq i32 %3, 1
  %195 = and i1 %194, %193
  %196 = add nsw i32 %190, 16000
  %197 = select i1 %195, i32 %196, i32 %190
  br label %455

198:                                              ; preds = %26
  %199 = icmp eq i32 %3, 0
  br i1 %199, label %200, label %227

200:                                              ; preds = %198
  %201 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 1
  %202 = load i8, ptr %201, align 1
  %203 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, 256
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %200
  %208 = and i32 %204, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = zext i8 %202 to i32
  %212 = mul nuw nsw i32 %211, 1000
  %213 = add nsw i32 %212, -64000
  br label %455

214:                                              ; preds = %207
  %215 = sext i8 %202 to i32
  %216 = mul nsw i32 %215, 1000
  br label %455

217:                                              ; preds = %200
  %218 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 8
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = zext i8 %202 to i32
  %223 = mul nuw nsw i32 %222, 1000
  br label %455

224:                                              ; preds = %217
  %225 = sext i8 %202 to i32
  %226 = mul nsw i32 %225, 1000
  br label %455

227:                                              ; preds = %198
  %228 = getelementptr [3 x i8], ptr @lm90_temp_max_index, i32 0, i32 %3
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 19, i32 %230
  %232 = load i16, ptr %231, align 2
  %233 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 256
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %249, label %237

237:                                              ; preds = %227
  %238 = and i32 %234, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %237
  %241 = zext i16 %232 to i32
  %242 = add nsw i32 %241, -16384
  %243 = sdiv i32 %242, 64
  %244 = mul nsw i32 %243, 250
  br label %261

245:                                              ; preds = %237
  %246 = sdiv i16 %232, 32
  %247 = sext i16 %246 to i32
  %248 = mul nsw i32 %247, 125
  br label %261

249:                                              ; preds = %227
  %250 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 8
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = lshr i16 %232, 5
  %255 = zext i16 %254 to i32
  %256 = mul nuw nsw i32 %255, 125
  br label %261

257:                                              ; preds = %249
  %258 = sdiv i16 %232, 32
  %259 = sext i16 %258 to i32
  %260 = mul nsw i32 %259, 125
  br label %261

261:                                              ; preds = %257, %253, %245, %240
  %262 = phi i32 [ %256, %253 ], [ %260, %257 ], [ %244, %240 ], [ %248, %245 ]
  %263 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %264, 2
  %266 = icmp eq i32 %3, 1
  %267 = and i1 %266, %265
  %268 = add nsw i32 %262, 16000
  %269 = select i1 %267, i32 %268, i32 %262
  br label %455

270:                                              ; preds = %26
  %271 = getelementptr [3 x i8], ptr @lm90_temp_crit_index, i32 0, i32 %3
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 %273
  %275 = load i8, ptr %274, align 1
  %276 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %277 = load i32, ptr %276, align 4
  %278 = and i32 %277, 256
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %290, label %280

280:                                              ; preds = %270
  %281 = and i32 %277, 1
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %280
  %284 = zext i8 %275 to i32
  %285 = mul nuw nsw i32 %284, 1000
  %286 = add nsw i32 %285, -64000
  br label %300

287:                                              ; preds = %280
  %288 = sext i8 %275 to i32
  %289 = mul nsw i32 %288, 1000
  br label %300

290:                                              ; preds = %270
  %291 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %292, 8
  br i1 %293, label %294, label %297

294:                                              ; preds = %290
  %295 = zext i8 %275 to i32
  %296 = mul nuw nsw i32 %295, 1000
  br label %300

297:                                              ; preds = %290
  %298 = sext i8 %275 to i32
  %299 = mul nsw i32 %298, 1000
  br label %300

300:                                              ; preds = %297, %294, %287, %283
  %301 = phi i32 [ %296, %294 ], [ %299, %297 ], [ %286, %283 ], [ %289, %287 ]
  %302 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %303 = load i32, ptr %302, align 4
  %304 = icmp eq i32 %303, 2
  %305 = icmp eq i32 %3, 1
  %306 = and i1 %305, %304
  %307 = add nsw i32 %301, 16000
  %308 = select i1 %306, i32 %307, i32 %301
  br label %455

309:                                              ; preds = %26
  %310 = getelementptr [3 x i8], ptr @lm90_temp_crit_index, i32 0, i32 %3
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i32
  %313 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %314 = load i32, ptr %313, align 4
  %315 = and i32 %314, 256
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %329, label %317

317:                                              ; preds = %309
  %318 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 %312
  %319 = load i8, ptr %318, align 1
  %320 = and i32 %314, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %317
  %323 = zext i8 %319 to i32
  %324 = mul nuw nsw i32 %323, 1000
  %325 = add nsw i32 %324, -64000
  br label %341

326:                                              ; preds = %317
  %327 = sext i8 %319 to i32
  %328 = mul nsw i32 %327, 1000
  br label %341

329:                                              ; preds = %309
  %330 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, 8
  %333 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 %312
  %334 = load i8, ptr %333, align 1
  br i1 %332, label %335, label %338

335:                                              ; preds = %329
  %336 = zext i8 %334 to i32
  %337 = mul nuw nsw i32 %336, 1000
  br label %341

338:                                              ; preds = %329
  %339 = sext i8 %334 to i32
  %340 = mul nsw i32 %339, 1000
  br label %341

341:                                              ; preds = %338, %335, %326, %322
  %342 = phi i32 [ %337, %335 ], [ %340, %338 ], [ %325, %322 ], [ %328, %326 ]
  %343 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 2
  %346 = icmp eq i32 %3, 1
  %347 = and i1 %346, %345
  %348 = add nsw i32 %342, 16000
  %349 = select i1 %347, i32 %348, i32 %342
  %350 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 20
  %351 = load i8, ptr %350, align 4
  %352 = sext i8 %351 to i32
  %353 = mul nsw i32 %352, -1000
  %354 = add nsw i32 %353, %349
  br label %455

355:                                              ; preds = %26
  %356 = getelementptr [3 x i8], ptr @lm90_temp_emerg_index, i32 0, i32 %3
  %357 = load i8, ptr %356, align 1
  %358 = zext i8 %357 to i32
  %359 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 %358
  %360 = load i8, ptr %359, align 1
  %361 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %362 = load i32, ptr %361, align 4
  %363 = and i32 %362, 256
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %375, label %365

365:                                              ; preds = %355
  %366 = and i32 %362, 1
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %365
  %369 = zext i8 %360 to i32
  %370 = mul nuw nsw i32 %369, 1000
  %371 = add nsw i32 %370, -64000
  br label %455

372:                                              ; preds = %365
  %373 = sext i8 %360 to i32
  %374 = mul nsw i32 %373, 1000
  br label %455

375:                                              ; preds = %355
  %376 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %377 = load i32, ptr %376, align 4
  %378 = icmp eq i32 %377, 8
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = zext i8 %360 to i32
  %381 = mul nuw nsw i32 %380, 1000
  br label %455

382:                                              ; preds = %375
  %383 = sext i8 %360 to i32
  %384 = mul nsw i32 %383, 1000
  br label %455

385:                                              ; preds = %26
  %386 = getelementptr [3 x i8], ptr @lm90_temp_emerg_index, i32 0, i32 %3
  %387 = load i8, ptr %386, align 1
  %388 = zext i8 %387 to i32
  %389 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %390 = load i32, ptr %389, align 4
  %391 = and i32 %390, 256
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %405, label %393

393:                                              ; preds = %385
  %394 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 %388
  %395 = load i8, ptr %394, align 1
  %396 = and i32 %390, 1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %393
  %399 = zext i8 %395 to i32
  %400 = mul nuw nsw i32 %399, 1000
  %401 = add nsw i32 %400, -64000
  br label %417

402:                                              ; preds = %393
  %403 = sext i8 %395 to i32
  %404 = mul nsw i32 %403, 1000
  br label %417

405:                                              ; preds = %385
  %406 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %407 = load i32, ptr %406, align 4
  %408 = icmp eq i32 %407, 8
  %409 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 18, i32 %388
  %410 = load i8, ptr %409, align 1
  br i1 %408, label %411, label %414

411:                                              ; preds = %405
  %412 = zext i8 %410 to i32
  %413 = mul nuw nsw i32 %412, 1000
  br label %417

414:                                              ; preds = %405
  %415 = sext i8 %410 to i32
  %416 = mul nsw i32 %415, 1000
  br label %417

417:                                              ; preds = %414, %411, %402, %398
  %418 = phi i32 [ %413, %411 ], [ %416, %414 ], [ %401, %398 ], [ %404, %402 ]
  %419 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 20
  %420 = load i8, ptr %419, align 4
  %421 = sext i8 %420 to i32
  %422 = mul nsw i32 %421, -1000
  %423 = add nsw i32 %422, %418
  br label %455

424:                                              ; preds = %26
  %425 = getelementptr %struct.lm90_data, ptr %22, i32 0, i32 19, i32 3
  %426 = load i16, ptr %425, align 2
  %427 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 10
  %428 = load i32, ptr %427, align 4
  %429 = and i32 %428, 256
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %443, label %431

431:                                              ; preds = %424
  %432 = and i32 %428, 1
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %431
  %435 = zext i16 %426 to i32
  %436 = add nsw i32 %435, -16384
  %437 = sdiv i32 %436, 64
  %438 = mul nsw i32 %437, 250
  br label %455

439:                                              ; preds = %431
  %440 = sdiv i16 %426, 32
  %441 = sext i16 %440 to i32
  %442 = mul nsw i32 %441, 125
  br label %455

443:                                              ; preds = %424
  %444 = getelementptr inbounds %struct.lm90_data, ptr %22, i32 0, i32 9
  %445 = load i32, ptr %444, align 4
  %446 = icmp eq i32 %445, 8
  br i1 %446, label %447, label %451

447:                                              ; preds = %443
  %448 = lshr i16 %426, 5
  %449 = zext i16 %448 to i32
  %450 = mul nuw nsw i32 %449, 125
  br label %455

451:                                              ; preds = %443
  %452 = sdiv i16 %426, 32
  %453 = sext i16 %452 to i32
  %454 = mul nsw i32 %453, 125
  br label %455

455:                                              ; preds = %451, %447, %439, %434, %417, %382, %379, %372, %368, %341, %300, %261, %224, %221, %214, %210, %189, %152, %149, %142, %138, %117, %108, %102, %96, %79, %70, %61, %16, %13
  %456 = phi i32 [ %19, %16 ], [ %15, %13 ], [ %69, %61 ], [ %78, %70 ], [ %87, %79 ], [ %116, %108 ], [ %125, %117 ], [ %308, %300 ], [ %354, %341 ], [ %423, %417 ], [ %107, %102 ], [ %101, %96 ], [ %197, %189 ], [ %269, %261 ], [ %381, %379 ], [ %384, %382 ], [ %371, %368 ], [ %374, %372 ], [ %450, %447 ], [ %454, %451 ], [ %438, %434 ], [ %442, %439 ], [ %151, %149 ], [ %154, %152 ], [ %141, %138 ], [ %144, %142 ], [ %223, %221 ], [ %226, %224 ], [ %213, %210 ], [ %216, %214 ]
  store i32 %456, ptr %4, align 4
  br label %457

457:                                              ; preds = %455, %26, %20, %12, %6, %5
  %458 = phi i32 [ -95, %5 ], [ %10, %6 ], [ -95, %12 ], [ %24, %20 ], [ -95, %26 ], [ 0, %455 ]
  ret i32 %458
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  switch i32 %1, label %105 [
    i32 0, label %6
    i32 1, label %18
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.lm90_data, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = tail call fastcc i32 @lm90_update_device(ptr noundef %0) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %102

12:                                               ; preds = %6
  %13 = icmp eq i32 %2, 5
  br i1 %13, label %14, label %102

14:                                               ; preds = %12
  %15 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #10
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 100000) #10
  %17 = tail call fastcc i32 @lm90_set_convrate(ptr noundef %8, i32 noundef %16) #10
  br label %102

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.lm90_data, ptr %20, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %21) #10
  %22 = tail call fastcc i32 @lm90_update_device(ptr noundef %0) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %102

24:                                               ; preds = %18
  switch i32 %2, label %102 [
    i32 5, label %25
    i32 7, label %34
    i32 9, label %43
    i32 10, label %48
    i32 11, label %95
    i32 20, label %100
  ]

25:                                               ; preds = %24
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call fastcc i32 @lm90_set_temp8(ptr noundef %20, i32 noundef 0, i32 noundef %4) #10
  br label %102

29:                                               ; preds = %25
  %30 = getelementptr [3 x i8], ptr @lm90_temp_min_index, i32 0, i32 %3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = tail call fastcc i32 @lm90_set_temp11(ptr noundef %20, i32 noundef %32, i32 noundef %4) #10
  br label %102

34:                                               ; preds = %24
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @lm90_set_temp8(ptr noundef %20, i32 noundef 1, i32 noundef %4) #10
  br label %102

38:                                               ; preds = %34
  %39 = getelementptr [3 x i8], ptr @lm90_temp_max_index, i32 0, i32 %3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = tail call fastcc i32 @lm90_set_temp11(ptr noundef %20, i32 noundef %41, i32 noundef %4) #10
  br label %102

43:                                               ; preds = %24
  %44 = getelementptr [3 x i8], ptr @lm90_temp_crit_index, i32 0, i32 %3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = tail call fastcc i32 @lm90_set_temp8(ptr noundef %20, i32 noundef %46, i32 noundef %4) #10
  br label %102

48:                                               ; preds = %24
  %49 = load ptr, ptr %20, align 4
  %50 = getelementptr inbounds %struct.lm90_data, ptr %20, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = getelementptr %struct.lm90_data, ptr %20, i32 0, i32 18, i32 2
  %56 = load i8, ptr %55, align 2
  %57 = and i32 %51, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = zext i8 %56 to i32
  %61 = mul nuw nsw i32 %60, 1000
  %62 = add nsw i32 %61, -64000
  br label %78

63:                                               ; preds = %54
  %64 = sext i8 %56 to i32
  %65 = mul nsw i32 %64, 1000
  br label %78

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.lm90_data, ptr %20, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 8
  %70 = getelementptr %struct.lm90_data, ptr %20, i32 0, i32 18, i32 2
  %71 = load i8, ptr %70, align 2
  br i1 %69, label %72, label %75

72:                                               ; preds = %66
  %73 = zext i8 %71 to i32
  %74 = mul nuw nsw i32 %73, 1000
  br label %78

75:                                               ; preds = %66
  %76 = sext i8 %71 to i32
  %77 = mul nsw i32 %76, 1000
  br label %78

78:                                               ; preds = %75, %72, %63, %59
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ], [ %62, %59 ], [ %65, %63 ]
  %80 = tail call i32 @llvm.smax.i32(i32 %4, i32 -128000) #10
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 255000) #10
  %82 = sub nsw i32 %79, %81
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = icmp ugt i32 %82, 30499
  br i1 %85, label %91, label %86

86:                                               ; preds = %84
  %87 = trunc i32 %82 to i16
  %88 = add nuw nsw i16 %87, 500
  %89 = udiv i16 %88, 1000
  %90 = trunc i16 %89 to i8
  br label %91

91:                                               ; preds = %86, %84, %78
  %92 = phi i8 [ %90, %86 ], [ 0, %78 ], [ 31, %84 ]
  %93 = getelementptr inbounds %struct.lm90_data, ptr %20, i32 0, i32 20
  store i8 %92, ptr %93, align 4
  %94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 33, i8 noundef zeroext %92) #10
  br label %102

95:                                               ; preds = %24
  %96 = getelementptr [3 x i8], ptr @lm90_temp_emerg_index, i32 0, i32 %3
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = tail call fastcc i32 @lm90_set_temp8(ptr noundef %20, i32 noundef %98, i32 noundef %4) #10
  br label %102

100:                                              ; preds = %24
  %101 = tail call fastcc i32 @lm90_set_temp11(ptr noundef %20, i32 noundef 3, i32 noundef %4) #10
  br label %102

102:                                              ; preds = %100, %95, %91, %43, %38, %36, %29, %27, %24, %18, %14, %12, %6
  %103 = phi ptr [ %9, %6 ], [ %9, %12 ], [ %9, %14 ], [ %21, %18 ], [ %21, %24 ], [ %21, %27 ], [ %21, %29 ], [ %21, %36 ], [ %21, %38 ], [ %21, %43 ], [ %21, %91 ], [ %21, %95 ], [ %21, %100 ]
  %104 = phi i32 [ %10, %6 ], [ -95, %12 ], [ %17, %14 ], [ %22, %18 ], [ -95, %24 ], [ %28, %27 ], [ %33, %29 ], [ %37, %36 ], [ %42, %38 ], [ %47, %43 ], [ %94, %91 ], [ %99, %95 ], [ %101, %100 ]
  tail call void @mutex_unlock(ptr noundef %103) #10
  br label %105

105:                                              ; preds = %102, %5
  %106 = phi i32 [ -95, %5 ], [ %104, %102 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_update_device(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 7
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %290

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %8
  %14 = load i16, ptr %4, align 8
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %14, -5
  %23 = tail call i32 @i2c_smbus_xfer(ptr noundef %19, i16 noundef zeroext %21, i16 noundef zeroext %22, i8 noundef zeroext 0, i8 noundef zeroext 32, i32 noundef 1, ptr noundef null) #10
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %463

25:                                               ; preds = %17
  %26 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %29

27:                                               ; preds = %13
  %28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 32) #10
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %463, label %32

32:                                               ; preds = %29
  %33 = trunc i32 %30 to i8
  %34 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 2
  store i8 %33, ptr %34, align 2
  %35 = load i16, ptr %4, align 8
  %36 = and i16 %35, 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %35, -5
  %44 = tail call i32 @i2c_smbus_xfer(ptr noundef %40, i16 noundef zeroext %42, i16 noundef zeroext %43, i8 noundef zeroext 0, i8 noundef zeroext 25, i32 noundef 1, ptr noundef null) #10
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %463

46:                                               ; preds = %38
  %47 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %50

48:                                               ; preds = %32
  %49 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 25) #10
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %463, label %53

53:                                               ; preds = %50
  %54 = trunc i32 %51 to i8
  %55 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 3
  store i8 %54, ptr %55, align 1
  %56 = load i16, ptr %4, align 8
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %63 = load i16, ptr %62, align 2
  %64 = and i16 %56, -5
  %65 = tail call i32 @i2c_smbus_xfer(ptr noundef %61, i16 noundef zeroext %63, i16 noundef zeroext %64, i8 noundef zeroext 0, i8 noundef zeroext 33, i32 noundef 1, ptr noundef null) #10
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %463

67:                                               ; preds = %59
  %68 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %71

69:                                               ; preds = %53
  %70 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 33) #10
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %463, label %74

74:                                               ; preds = %71
  %75 = trunc i32 %72 to i8
  %76 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 20
  store i8 %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %8
  %78 = load i16, ptr %4, align 8
  %79 = and i16 %78, 4
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = and i16 %78, -5
  %87 = tail call i32 @i2c_smbus_xfer(ptr noundef %83, i16 noundef zeroext %85, i16 noundef zeroext %86, i8 noundef zeroext 0, i8 noundef zeroext 8, i32 noundef 1, ptr noundef null) #10
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %463

89:                                               ; preds = %81
  %90 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %93

91:                                               ; preds = %77
  %92 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 8) #10
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %463, label %96

96:                                               ; preds = %93
  %97 = trunc i32 %94 to i16
  %98 = shl i16 %97, 8
  %99 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 1
  store i16 %98, ptr %99, align 2
  %100 = load i32, ptr %9, align 4
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %126, label %103

103:                                              ; preds = %96
  %104 = load i16, ptr %4, align 8
  %105 = and i16 %104, 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %111 = load i16, ptr %110, align 2
  %112 = and i16 %104, -5
  %113 = tail call i32 @i2c_smbus_xfer(ptr noundef %109, i16 noundef zeroext %111, i16 noundef zeroext %112, i8 noundef zeroext 0, i8 noundef zeroext 20, i32 noundef 1, ptr noundef null) #10
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %463

115:                                              ; preds = %107
  %116 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %119

117:                                              ; preds = %103
  %118 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 20) #10
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %463, label %122

122:                                              ; preds = %119
  %123 = load i16, ptr %99, align 2
  %124 = trunc i32 %120 to i16
  %125 = or i16 %123, %124
  store i16 %125, ptr %99, align 2
  br label %126

126:                                              ; preds = %122, %96
  %127 = load i16, ptr %4, align 8
  %128 = and i16 %127, 4
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = and i16 %127, -5
  %136 = tail call i32 @i2c_smbus_xfer(ptr noundef %132, i16 noundef zeroext %134, i16 noundef zeroext %135, i8 noundef zeroext 0, i8 noundef zeroext 7, i32 noundef 1, ptr noundef null) #10
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %138, label %463

138:                                              ; preds = %130
  %139 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %142

140:                                              ; preds = %126
  %141 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 7) #10
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %463, label %145

145:                                              ; preds = %142
  %146 = trunc i32 %143 to i16
  %147 = shl i16 %146, 8
  %148 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 2
  store i16 %147, ptr %148, align 4
  %149 = load i32, ptr %9, align 4
  %150 = and i32 %149, 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %176, label %152

152:                                              ; preds = %145
  %153 = load i16, ptr %4, align 8
  %154 = and i16 %153, 4
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %160 = load i16, ptr %159, align 2
  %161 = and i16 %153, -5
  %162 = tail call i32 @i2c_smbus_xfer(ptr noundef %158, i16 noundef zeroext %160, i16 noundef zeroext %161, i8 noundef zeroext 0, i8 noundef zeroext 19, i32 noundef 1, ptr noundef null) #10
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %164, label %463

164:                                              ; preds = %156
  %165 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %168

166:                                              ; preds = %152
  %167 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 19) #10
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %463, label %171

171:                                              ; preds = %168
  %172 = load i16, ptr %148, align 4
  %173 = trunc i32 %169 to i16
  %174 = or i16 %172, %173
  store i16 %174, ptr %148, align 4
  %175 = load i32, ptr %9, align 4
  br label %176

176:                                              ; preds = %171, %145
  %177 = phi i32 [ %175, %171 ], [ %149, %145 ]
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = tail call fastcc i32 @lm90_read16(ptr noundef %4, i8 noundef zeroext 17, i8 noundef zeroext 18) #10
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %463, label %183

183:                                              ; preds = %180
  %184 = trunc i32 %181 to i16
  %185 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 3
  store i16 %184, ptr %185, align 2
  %186 = load i32, ptr %9, align 4
  br label %187

187:                                              ; preds = %183, %176
  %188 = phi i32 [ %186, %183 ], [ %177, %176 ]
  %189 = and i32 %188, 16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %234, label %191

191:                                              ; preds = %187
  %192 = load i16, ptr %4, align 8
  %193 = and i16 %192, 4
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %199 = load i16, ptr %198, align 2
  %200 = and i16 %192, -5
  %201 = tail call i32 @i2c_smbus_xfer(ptr noundef %197, i16 noundef zeroext %199, i16 noundef zeroext %200, i8 noundef zeroext 0, i8 noundef zeroext 23, i32 noundef 1, ptr noundef null) #10
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %203, label %463

203:                                              ; preds = %195
  %204 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %207

205:                                              ; preds = %191
  %206 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 23) #10
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %463, label %210

210:                                              ; preds = %207
  %211 = trunc i32 %208 to i8
  %212 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 4
  store i8 %211, ptr %212, align 4
  %213 = load i16, ptr %4, align 8
  %214 = and i16 %213, 4
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %218 = load ptr, ptr %217, align 8
  %219 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %220 = load i16, ptr %219, align 2
  %221 = and i16 %213, -5
  %222 = tail call i32 @i2c_smbus_xfer(ptr noundef %218, i16 noundef zeroext %220, i16 noundef zeroext %221, i8 noundef zeroext 0, i8 noundef zeroext 22, i32 noundef 1, ptr noundef null) #10
  %223 = icmp sgt i32 %222, -1
  br i1 %223, label %224, label %463

224:                                              ; preds = %216
  %225 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %228

226:                                              ; preds = %210
  %227 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 22) #10
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %463, label %231

231:                                              ; preds = %228
  %232 = trunc i32 %229 to i8
  %233 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 5
  store i8 %232, ptr %233, align 1
  br label %234

234:                                              ; preds = %231, %187
  %235 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 9
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 10
  br i1 %237, label %238, label %290

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 12
  %240 = load i8, ptr %239, align 4
  %241 = or i8 %240, 8
  %242 = icmp eq i8 %240, %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %238
  %244 = load ptr, ptr %3, align 4
  %245 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %244, i8 noundef zeroext 9, i8 noundef zeroext %241) #10
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  store i8 %241, ptr %239, align 4
  br label %250

248:                                              ; preds = %243
  %249 = icmp slt i32 %245, 0
  br i1 %249, label %463, label %250

250:                                              ; preds = %248, %247, %238
  %251 = load i16, ptr %4, align 8
  %252 = and i16 %251, 4
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %258 = load i16, ptr %257, align 2
  %259 = and i16 %251, -5
  %260 = tail call i32 @i2c_smbus_xfer(ptr noundef %256, i16 noundef zeroext %258, i16 noundef zeroext %259, i8 noundef zeroext 0, i8 noundef zeroext 25, i32 noundef 1, ptr noundef null) #10
  %261 = icmp sgt i32 %260, -1
  br i1 %261, label %262, label %463

262:                                              ; preds = %254
  %263 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %266

264:                                              ; preds = %250
  %265 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 25) #10
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi i32 [ %263, %262 ], [ %265, %264 ]
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %463, label %269

269:                                              ; preds = %266
  %270 = trunc i32 %267 to i8
  %271 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 6
  store i8 %270, ptr %271, align 2
  %272 = tail call fastcc i32 @lm90_read_reg(ptr noundef %4, i8 noundef zeroext 22) #10
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %463, label %274

274:                                              ; preds = %269
  %275 = trunc i32 %272 to i8
  %276 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 7
  store i8 %275, ptr %276, align 1
  %277 = tail call fastcc i32 @lm90_read_reg(ptr noundef %4, i8 noundef zeroext 8) #10
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %463, label %279

279:                                              ; preds = %274
  %280 = trunc i32 %277 to i16
  %281 = shl i16 %280, 8
  %282 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 6
  store i16 %281, ptr %282, align 4
  %283 = tail call fastcc i32 @lm90_read_reg(ptr noundef %4, i8 noundef zeroext 7) #10
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %463, label %285

285:                                              ; preds = %279
  %286 = trunc i32 %283 to i16
  %287 = shl i16 %286, 8
  %288 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 7
  store i16 %287, ptr %288, align 2
  %289 = tail call fastcc i32 @lm90_select_remote_channel(ptr noundef %3, i32 noundef 0) #10
  br label %290

290:                                              ; preds = %285, %234, %1
  %291 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 8
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 11
  %294 = load i32, ptr %293, align 4
  %295 = tail call i32 @__msecs_to_jiffies(i32 noundef %294) #10
  %296 = add i32 %295, %292
  %297 = load volatile i32, ptr @jiffies, align 64
  %298 = sub i32 %296, %297
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %290
  %301 = load i8, ptr %5, align 4, !range !10
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %463

303:                                              ; preds = %300, %290
  store i8 0, ptr %5, align 4
  %304 = load i16, ptr %4, align 8
  %305 = and i16 %304, 4
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %317, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %309 = load ptr, ptr %308, align 8
  %310 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %311 = load i16, ptr %310, align 2
  %312 = and i16 %304, -5
  %313 = tail call i32 @i2c_smbus_xfer(ptr noundef %309, i16 noundef zeroext %311, i16 noundef zeroext %312, i8 noundef zeroext 0, i8 noundef zeroext 6, i32 noundef 1, ptr noundef null) #10
  %314 = icmp sgt i32 %313, -1
  br i1 %314, label %315, label %463

315:                                              ; preds = %307
  %316 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %319

317:                                              ; preds = %303
  %318 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 6) #10
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %463, label %322

322:                                              ; preds = %319
  %323 = trunc i32 %320 to i8
  %324 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 18
  store i8 %323, ptr %324, align 4
  %325 = load i16, ptr %4, align 8
  %326 = and i16 %325, 4
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %338, label %328

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %330 = load ptr, ptr %329, align 8
  %331 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %332 = load i16, ptr %331, align 2
  %333 = and i16 %325, -5
  %334 = tail call i32 @i2c_smbus_xfer(ptr noundef %330, i16 noundef zeroext %332, i16 noundef zeroext %333, i8 noundef zeroext 0, i8 noundef zeroext 5, i32 noundef 1, ptr noundef null) #10
  %335 = icmp sgt i32 %334, -1
  br i1 %335, label %336, label %463

336:                                              ; preds = %328
  %337 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %340

338:                                              ; preds = %322
  %339 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 5) #10
  br label %340

340:                                              ; preds = %338, %336
  %341 = phi i32 [ %337, %336 ], [ %339, %338 ]
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %463, label %343

343:                                              ; preds = %340
  %344 = trunc i32 %341 to i8
  %345 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 18, i32 1
  store i8 %344, ptr %345, align 1
  %346 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 17
  %347 = load i8, ptr %346, align 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %343
  %350 = tail call fastcc i32 @lm90_read16(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %347)
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %463, label %352

352:                                              ; preds = %349
  %353 = trunc i32 %350 to i16
  br label %376

354:                                              ; preds = %343
  %355 = load i16, ptr %4, align 8
  %356 = and i16 %355, 4
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %368, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %360 = load ptr, ptr %359, align 8
  %361 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %362 = load i16, ptr %361, align 2
  %363 = and i16 %355, -5
  %364 = tail call i32 @i2c_smbus_xfer(ptr noundef %360, i16 noundef zeroext %362, i16 noundef zeroext %363, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1, ptr noundef null) #10
  %365 = icmp sgt i32 %364, -1
  br i1 %365, label %366, label %463

366:                                              ; preds = %358
  %367 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %370

368:                                              ; preds = %354
  %369 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #10
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %367, %366 ], [ %369, %368 ]
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %463, label %373

373:                                              ; preds = %370
  %374 = trunc i32 %371 to i16
  %375 = shl i16 %374, 8
  br label %376

376:                                              ; preds = %373, %352
  %377 = phi i16 [ %375, %373 ], [ %353, %352 ]
  %378 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 4
  store i16 %377, ptr %378, align 4
  %379 = tail call fastcc i32 @lm90_read16(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 16)
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %463, label %381

381:                                              ; preds = %376
  %382 = trunc i32 %379 to i16
  %383 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 19
  store i16 %382, ptr %383, align 4
  %384 = load i16, ptr %4, align 8
  %385 = and i16 %384, 4
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %397, label %387

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %389 = load ptr, ptr %388, align 8
  %390 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %391 = load i16, ptr %390, align 2
  %392 = and i16 %384, -5
  %393 = tail call i32 @i2c_smbus_xfer(ptr noundef %389, i16 noundef zeroext %391, i16 noundef zeroext %392, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 1, ptr noundef null) #10
  %394 = icmp sgt i32 %393, -1
  br i1 %394, label %395, label %463

395:                                              ; preds = %387
  %396 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #10
  br label %399

397:                                              ; preds = %381
  %398 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 2) #10
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i32 [ %396, %395 ], [ %398, %397 ]
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %463, label %402

402:                                              ; preds = %399
  %403 = trunc i32 %400 to i16
  %404 = and i16 %403, -129
  %405 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 21
  store i16 %404, ptr %405, align 2
  %406 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 9
  %407 = load i32, ptr %406, align 4
  %408 = icmp eq i32 %407, 10
  br i1 %408, label %409, label %437

409:                                              ; preds = %402
  %410 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 12
  %411 = load i8, ptr %410, align 4
  %412 = or i8 %411, 8
  %413 = icmp eq i8 %411, %412
  br i1 %413, label %421, label %414

414:                                              ; preds = %409
  %415 = load ptr, ptr %3, align 4
  %416 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %415, i8 noundef zeroext 9, i8 noundef zeroext %412) #10
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  store i8 %412, ptr %410, align 4
  br label %421

419:                                              ; preds = %414
  %420 = icmp slt i32 %416, 0
  br i1 %420, label %463, label %421

421:                                              ; preds = %419, %418, %409
  %422 = tail call fastcc i32 @lm90_read16(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 16)
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %421
  %425 = tail call fastcc i32 @lm90_select_remote_channel(ptr noundef %3, i32 noundef 0)
  br label %463

426:                                              ; preds = %421
  %427 = trunc i32 %422 to i16
  %428 = getelementptr %struct.lm90_data, ptr %3, i32 0, i32 19, i32 5
  store i16 %427, ptr %428, align 2
  %429 = tail call fastcc i32 @lm90_select_remote_channel(ptr noundef %3, i32 noundef 0)
  %430 = tail call fastcc i32 @lm90_read_reg(ptr noundef %4, i8 noundef zeroext 18)
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %463, label %432

432:                                              ; preds = %426
  %433 = load i16, ptr %405, align 2
  %434 = trunc i32 %430 to i16
  %435 = shl i16 %434, 8
  %436 = or i16 %433, %435
  store i16 %436, ptr %405, align 2
  br label %437

437:                                              ; preds = %432, %402
  %438 = phi i16 [ %436, %432 ], [ %404, %402 ]
  %439 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %440 = load i32, ptr %439, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 13
  %444 = load i8, ptr %443, align 1
  %445 = icmp sgt i8 %444, -1
  br i1 %445, label %446, label %461

446:                                              ; preds = %442, %437
  %447 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 15
  %448 = load i16, ptr %447, align 4
  %449 = and i16 %448, %438
  %450 = icmp eq i16 %449, 0
  br i1 %450, label %451, label %461

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.lm90_data, ptr %3, i32 0, i32 12
  %453 = load i8, ptr %452, align 4
  %454 = icmp sgt i8 %453, -1
  br i1 %454, label %461, label %455

455:                                              ; preds = %451
  %456 = and i8 %453, 127
  %457 = load ptr, ptr %3, align 4
  %458 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %457, i8 noundef zeroext 9, i8 noundef zeroext %456) #10
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %455
  store i8 %456, ptr %452, align 4
  br label %461

461:                                              ; preds = %460, %455, %451, %446, %442
  %462 = load volatile i32, ptr @jiffies, align 64
  store i32 %462, ptr %291, align 4
  store i8 1, ptr %5, align 4
  br label %463

463:                                              ; preds = %461, %426, %424, %419, %399, %387, %376, %370, %358, %349, %340, %328, %319, %307, %300, %279, %274, %269, %266, %254, %248, %228, %216, %207, %195, %180, %168, %156, %142, %130, %119, %107, %93, %81, %71, %59, %50, %38, %29, %17
  %464 = phi i32 [ %422, %424 ], [ %320, %319 ], [ %341, %340 ], [ %350, %349 ], [ %371, %370 ], [ %379, %376 ], [ %400, %399 ], [ %416, %419 ], [ %430, %426 ], [ 0, %461 ], [ 0, %300 ], [ %260, %254 ], [ %222, %216 ], [ %201, %195 ], [ %162, %156 ], [ %136, %130 ], [ %113, %107 ], [ %87, %81 ], [ %65, %59 ], [ %44, %38 ], [ %23, %17 ], [ %283, %279 ], [ %277, %274 ], [ %272, %269 ], [ %267, %266 ], [ %245, %248 ], [ %229, %228 ], [ %208, %207 ], [ %181, %180 ], [ %169, %168 ], [ %143, %142 ], [ %120, %119 ], [ %94, %93 ], [ %72, %71 ], [ %51, %50 ], [ %30, %29 ], [ %313, %307 ], [ %334, %328 ], [ %364, %358 ], [ %393, %387 ]
  ret i32 %464
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_read_reg(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = load i16, ptr %0, align 8
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %3, -5
  %12 = tail call i32 @i2c_smbus_xfer(ptr noundef %8, i16 noundef zeroext %10, i16 noundef zeroext %11, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 1, ptr noundef null) #10
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %18

16:                                               ; preds = %2
  %17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %18

18:                                               ; preds = %16, %14, %6
  %19 = phi i32 [ %15, %14 ], [ %12, %6 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_read16(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = load i16, ptr %0, align 8
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %4, -5
  %13 = tail call i32 @i2c_smbus_xfer(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 1, ptr noundef null) #10
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %85

15:                                               ; preds = %7
  %16 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %85, label %22

22:                                               ; preds = %19
  %23 = load i16, ptr %0, align 8
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %23, -5
  %32 = tail call i32 @i2c_smbus_xfer(ptr noundef %28, i16 noundef zeroext %30, i16 noundef zeroext %31, i8 noundef zeroext 0, i8 noundef zeroext %2, i32 noundef 1, ptr noundef null) #10
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %85

34:                                               ; preds = %26
  %35 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %38

36:                                               ; preds = %22
  %37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %2) #10
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %38
  %42 = load i16, ptr %0, align 8
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %42, -5
  %51 = tail call i32 @i2c_smbus_xfer(ptr noundef %47, i16 noundef zeroext %49, i16 noundef zeroext %50, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 1, ptr noundef null) #10
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %85

53:                                               ; preds = %45
  %54 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %57

55:                                               ; preds = %41
  %56 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %20, %58
  br i1 %61, label %81, label %62

62:                                               ; preds = %60
  %63 = load i16, ptr %0, align 8
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = and i16 %63, -5
  %72 = tail call i32 @i2c_smbus_xfer(ptr noundef %68, i16 noundef zeroext %70, i16 noundef zeroext %71, i8 noundef zeroext 0, i8 noundef zeroext %2, i32 noundef 1, ptr noundef null) #10
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %78

76:                                               ; preds = %62
  %77 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %2) #10
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78, %60
  %82 = phi i32 [ %79, %78 ], [ %39, %60 ]
  %83 = shl i32 %58, 8
  %84 = or i32 %82, %83
  br label %85

85:                                               ; preds = %81, %78, %66, %57, %45, %38, %26, %19, %7
  %86 = phi i32 [ %84, %81 ], [ %20, %19 ], [ %39, %38 ], [ %58, %57 ], [ %79, %78 ], [ %13, %7 ], [ %32, %26 ], [ %51, %45 ], [ %72, %66 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_select_remote_channel(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -9
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i8 0, i8 8
  %12 = or i8 %9, %11
  %13 = icmp eq i8 %8, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 4
  %16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 9, i8 noundef zeroext %12) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8 %12, ptr %7, align 4
  br label %19

19:                                               ; preds = %18, %14, %6, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %18 ], [ 0, %6 ], [ %16, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_set_convrate(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = shl i32 %1, 6
  %4 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 16
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = icmp ne i8 %5, 0
  %8 = icmp ult i32 %3, 768000
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %10, %2
  %11 = phi i32 [ %14, %10 ], [ 1024000, %2 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %2 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = lshr i32 %11, 1
  %15 = icmp ult i32 %13, %6
  %16 = mul nuw nsw i32 %14, 3
  %17 = lshr i32 %16, 2
  %18 = icmp ult i32 %3, %17
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %10, label %20

20:                                               ; preds = %10
  %21 = trunc i32 %13 to i8
  %22 = add nuw nsw i32 %14, 32
  %23 = lshr i32 %22, 6
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i8 [ 0, %2 ], [ %21, %20 ]
  %26 = phi i32 [ 16000, %2 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %28 = load i8, ptr %27, align 4
  %29 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  %34 = or i8 %28, 64
  %35 = icmp eq i8 %28, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 4
  %38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 9, i8 noundef zeroext %34) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 %34, ptr %27, align 4
  br label %43

41:                                               ; preds = %36
  %42 = icmp slt i32 %38, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %41, %40, %33, %24
  %44 = load ptr, ptr %0, align 4
  %45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 10, i8 noundef zeroext %25) #10
  %46 = load i8, ptr %27, align 4
  %47 = icmp eq i8 %46, %28
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 4
  %50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 9, i8 noundef zeroext %28) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8 %28, ptr %27, align 4
  br label %53

53:                                               ; preds = %52, %48, %43, %41
  %54 = phi i32 [ %38, %41 ], [ %45, %43 ], [ %45, %48 ], [ %45, %52 ]
  %55 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 11
  store i32 %26, ptr %55, align 4
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_set_temp8(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = icmp eq i32 %1, 3
  %9 = and i1 %8, %7
  %10 = tail call i32 @llvm.smax.i32(i32 %2, i32 -128000)
  %11 = add nsw i32 %10, -16000
  %12 = select i1 %9, i32 %11, i32 %2
  %13 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %3
  %18 = and i32 %14, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = icmp slt i32 %12, -63999
  br i1 %21, label %61, label %22

22:                                               ; preds = %20
  %23 = icmp sgt i32 %12, 190999
  br i1 %23, label %61, label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %12, 64500
  %26 = udiv i32 %25, 1000
  %27 = trunc i32 %26 to i8
  br label %61

28:                                               ; preds = %17
  %29 = icmp slt i32 %12, 1
  br i1 %29, label %61, label %30

30:                                               ; preds = %28
  %31 = icmp ugt i32 %12, 126999
  br i1 %31, label %61, label %32

32:                                               ; preds = %30
  %33 = add nuw nsw i32 %12, 500
  %34 = udiv i32 %33, 1000
  %35 = trunc i32 %34 to i8
  br label %61

36:                                               ; preds = %3
  %37 = icmp eq i32 %6, 8
  br i1 %37, label %38, label %46

38:                                               ; preds = %36
  %39 = icmp slt i32 %12, 1
  br i1 %39, label %61, label %40

40:                                               ; preds = %38
  %41 = icmp ugt i32 %12, 254999
  br i1 %41, label %61, label %42

42:                                               ; preds = %40
  %43 = add nuw nsw i32 %12, 500
  %44 = udiv i32 %43, 1000
  %45 = trunc i32 %44 to i8
  br label %61

46:                                               ; preds = %36
  %47 = icmp slt i32 %12, -127999
  br i1 %47, label %61, label %48

48:                                               ; preds = %46
  %49 = icmp sgt i32 %12, 126999
  br i1 %49, label %61, label %50

50:                                               ; preds = %48
  %51 = icmp slt i32 %12, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = sub nsw i32 500, %12
  %54 = udiv i32 %53, 1000
  %55 = trunc i32 %54 to i8
  %56 = sub i8 0, %55
  br label %61

57:                                               ; preds = %50
  %58 = add nuw nsw i32 %12, 500
  %59 = udiv i32 %58, 1000
  %60 = trunc i32 %59 to i8
  br label %61

61:                                               ; preds = %57, %52, %48, %46, %42, %40, %38, %32, %30, %28, %24, %22, %20
  %62 = phi i8 [ %27, %24 ], [ %35, %32 ], [ 0, %20 ], [ -1, %22 ], [ 0, %28 ], [ 127, %30 ], [ %45, %42 ], [ 0, %38 ], [ -1, %40 ], [ %56, %52 ], [ %60, %57 ], [ -128, %46 ], [ 127, %48 ]
  %63 = getelementptr %struct.lm90_data, ptr %0, i32 0, i32 18, i32 %1
  store i8 %62, ptr %63, align 1
  %64 = load i32, ptr %5, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = icmp slt i32 %1, 6
  %68 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, -9
  %71 = select i1 %67, i8 0, i8 8
  %72 = or i8 %70, %71
  %73 = icmp eq i8 %69, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %0, align 4
  %76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 9, i8 noundef zeroext %72) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8 %72, ptr %68, align 4
  br label %79

79:                                               ; preds = %78, %74, %66, %61
  %80 = getelementptr [8 x i8], ptr @lm90_set_temp8.reg, i32 0, i32 %1
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr %struct.lm90_data, ptr %0, i32 0, i32 18, i32 %1
  %83 = load i8, ptr %82, align 1
  %84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext %81, i8 noundef zeroext %83) #10
  %85 = load i32, ptr %5, align 4
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, -9
  %91 = icmp eq i8 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %0, align 4
  %94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext 9, i8 noundef zeroext %90) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8 %90, ptr %88, align 4
  br label %97

97:                                               ; preds = %96, %92, %87, %79
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lm90_set_temp11(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr [8 x %struct.reg], ptr @lm90_set_temp11.reg, i32 0, i32 %1
  %6 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  %9 = icmp slt i32 %1, 3
  %10 = and i1 %9, %8
  %11 = tail call i32 @llvm.smax.i32(i32 %2, i32 -128000)
  %12 = add nsw i32 %11, -16000
  %13 = select i1 %10, i32 %12, i32 %2
  %14 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %3
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = icmp slt i32 %13, -63999
  br i1 %22, label %90, label %23

23:                                               ; preds = %21
  %24 = icmp sgt i32 %13, 191749
  br i1 %24, label %90, label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %13, 64125
  %27 = udiv i32 %26, 250
  %28 = trunc i32 %27 to i16
  %29 = shl nuw i16 %28, 6
  br label %90

30:                                               ; preds = %18
  %31 = icmp slt i32 %13, 1
  br i1 %31, label %90, label %32

32:                                               ; preds = %30
  %33 = icmp ugt i32 %13, 127749
  br i1 %33, label %90, label %34

34:                                               ; preds = %32
  %35 = add nuw nsw i32 %13, 125
  %36 = udiv i32 %35, 250
  %37 = trunc i32 %36 to i16
  %38 = shl nuw nsw i16 %37, 6
  br label %90

39:                                               ; preds = %3
  %40 = icmp eq i32 %7, 8
  br i1 %40, label %41, label %53

41:                                               ; preds = %39
  %42 = icmp slt i32 %13, 1
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = icmp ugt i32 %13, 254999
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = add nuw nsw i32 %13, 500
  %47 = udiv i32 %46, 1000
  %48 = trunc i32 %47 to i8
  br label %49

49:                                               ; preds = %45, %43, %41
  %50 = phi i8 [ %48, %45 ], [ 0, %41 ], [ -1, %43 ]
  %51 = zext i8 %50 to i16
  %52 = shl nuw i16 %51, 8
  br label %90

53:                                               ; preds = %39
  %54 = and i32 %15, 8
  %55 = icmp eq i32 %54, 0
  %56 = icmp slt i32 %13, -127999
  br i1 %55, label %72, label %57

57:                                               ; preds = %53
  br i1 %56, label %90, label %58

58:                                               ; preds = %57
  %59 = icmp sgt i32 %13, 127874
  br i1 %59, label %90, label %60

60:                                               ; preds = %58
  %61 = icmp slt i32 %13, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = sub nsw i32 62, %13
  %64 = udiv i32 %63, 125
  %65 = trunc i32 %64 to i16
  %66 = mul nsw i16 %65, -32
  br label %90

67:                                               ; preds = %60
  %68 = add nuw nsw i32 %13, 62
  %69 = udiv i32 %68, 125
  %70 = trunc i32 %69 to i16
  %71 = shl nuw nsw i16 %70, 5
  br label %90

72:                                               ; preds = %53
  br i1 %56, label %86, label %73

73:                                               ; preds = %72
  %74 = icmp sgt i32 %13, 126999
  br i1 %74, label %86, label %75

75:                                               ; preds = %73
  %76 = icmp slt i32 %13, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = sub nsw i32 500, %13
  %79 = udiv i32 %78, 1000
  %80 = trunc i32 %79 to i8
  %81 = sub i8 0, %80
  br label %86

82:                                               ; preds = %75
  %83 = add nuw nsw i32 %13, 500
  %84 = udiv i32 %83, 1000
  %85 = trunc i32 %84 to i8
  br label %86

86:                                               ; preds = %82, %77, %73, %72
  %87 = phi i8 [ %81, %77 ], [ %85, %82 ], [ -128, %72 ], [ 127, %73 ]
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  br label %90

90:                                               ; preds = %86, %67, %62, %58, %57, %49, %34, %32, %30, %25, %23, %21
  %91 = phi i16 [ %52, %49 ], [ %89, %86 ], [ %29, %25 ], [ %38, %34 ], [ 0, %21 ], [ -64, %23 ], [ 0, %30 ], [ 32704, %32 ], [ %66, %62 ], [ %71, %67 ], [ -32768, %57 ], [ 32736, %58 ]
  %92 = getelementptr %struct.lm90_data, ptr %0, i32 0, i32 19, i32 %1
  store i16 %91, ptr %92, align 2
  %93 = load i32, ptr %6, align 4
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %97 = load i8, ptr %96, align 4
  %98 = and i8 %97, -9
  %99 = select i1 %9, i8 0, i8 8
  %100 = or i8 %98, %99
  %101 = icmp eq i8 %97, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load ptr, ptr %0, align 4
  %104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %103, i8 noundef zeroext 9, i8 noundef zeroext %100) #10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i8 %100, ptr %96, align 4
  br label %107

107:                                              ; preds = %106, %102, %95, %90
  %108 = load i8, ptr %5, align 1
  %109 = getelementptr %struct.lm90_data, ptr %0, i32 0, i32 19, i32 %1
  %110 = load i16, ptr %109, align 2
  %111 = lshr i16 %110, 8
  %112 = trunc i16 %111 to i8
  %113 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext %108, i8 noundef zeroext %112) #10
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %107
  %116 = load i32, ptr %14, align 4
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = getelementptr [8 x %struct.reg], ptr @lm90_set_temp11.reg, i32 0, i32 %1, i32 1
  %121 = load i8, ptr %120, align 1
  %122 = load i16, ptr %109, align 2
  %123 = trunc i16 %122 to i8
  %124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext %121, i8 noundef zeroext %123) #10
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i32 [ %124, %119 ], [ %113, %115 ]
  %127 = load i32, ptr %6, align 4
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %131 = load i8, ptr %130, align 4
  %132 = and i8 %131, -9
  %133 = icmp eq i8 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %0, align 4
  %136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext 9, i8 noundef zeroext %132) #10
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i8 %132, ptr %130, align 4
  br label %139

139:                                              ; preds = %138, %134, %129, %125, %107
  %140 = phi i32 [ %113, %107 ], [ %126, %125 ], [ %126, %129 ], [ %126, %134 ], [ %126, %138 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lm90_restore_conf(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = or i8 %6, 64
  %13 = icmp eq i8 %6, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 9, i8 noundef zeroext %12) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8 %12, ptr %5, align 4
  br label %20

18:                                               ; preds = %14
  %19 = icmp slt i32 %15, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %18, %17, %11, %1
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 10, i8 noundef zeroext %4) #10
  %23 = load i8, ptr %5, align 4
  %24 = icmp eq i8 %23, %6
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 4
  %27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 9, i8 noundef zeroext %6) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8 %6, ptr %5, align 4
  br label %30

30:                                               ; preds = %29, %25, %20, %18
  %31 = getelementptr inbounds %struct.lm90_data, ptr %0, i32 0, i32 13
  %32 = load i8, ptr %31, align 1
  %33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 9, i8 noundef zeroext %32) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pec_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = load i16, ptr %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pec_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  switch i32 %10, label %19 [
    i32 0, label %11
    i32 1, label %14
  ]

11:                                               ; preds = %9
  %12 = load i16, ptr %6, align 8
  %13 = and i16 %12, -5
  br label %17

14:                                               ; preds = %9
  %15 = load i16, ptr %6, align 8
  %16 = or i16 %15, 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i16 [ %16, %14 ], [ %13, %11 ]
  store i16 %18, ptr %6, align 8
  br label %19

19:                                               ; preds = %17, %9, %4
  %20 = phi i32 [ %3, %17 ], [ %7, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lm90_is_tripped(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i16, ptr %0, align 8
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %5, -5
  %14 = tail call i32 @i2c_smbus_xfer(ptr noundef %10, i16 noundef zeroext %12, i16 noundef zeroext %13, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 1, ptr noundef null) #10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %98

16:                                               ; preds = %8
  %17 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %20

18:                                               ; preds = %2
  %19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 2) #10
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %98, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i16, ptr %0, align 8
  %29 = and i16 %28, 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = and i16 %28, -5
  %37 = tail call i32 @i2c_smbus_xfer(ptr noundef %33, i16 noundef zeroext %35, i16 noundef zeroext %36, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef 1, ptr noundef null) #10
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %98

39:                                               ; preds = %31
  %40 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #10
  br label %43

41:                                               ; preds = %27
  %42 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 18) #10
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %98, label %46

46:                                               ; preds = %43, %23
  %47 = phi i32 [ %44, %43 ], [ 0, %23 ]
  %48 = shl i32 %47, 8
  %49 = or i32 %48, %21
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %1, align 2
  %51 = and i32 %21, 127
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %47, 254
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %98, label %56

56:                                               ; preds = %46
  %57 = and i32 %21, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @hwmon_notify_event(ptr noundef %61, i32 noundef 1, i32 noundef 15, i32 noundef 0) #10
  br label %63

63:                                               ; preds = %59, %56
  %64 = and i32 %21, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @hwmon_notify_event(ptr noundef %68, i32 noundef 1, i32 noundef 15, i32 noundef 1) #10
  br label %70

70:                                               ; preds = %66, %63
  %71 = and i32 %47, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @hwmon_notify_event(ptr noundef %75, i32 noundef 1, i32 noundef 15, i32 noundef 2) #10
  br label %77

77:                                               ; preds = %73, %70
  %78 = and i32 %21, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @hwmon_notify_event(ptr noundef %82, i32 noundef 1, i32 noundef 16, i32 noundef 0) #10
  br label %84

84:                                               ; preds = %80, %77
  %85 = and i32 %21, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @hwmon_notify_event(ptr noundef %89, i32 noundef 1, i32 noundef 16, i32 noundef 1) #10
  br label %91

91:                                               ; preds = %87, %84
  %92 = and i32 %47, 16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.lm90_data, ptr %4, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @hwmon_notify_event(ptr noundef %96, i32 noundef 1, i32 noundef 16, i32 noundef 2) #10
  br label %98

98:                                               ; preds = %94, %91, %46, %43, %31, %20, %8
  %99 = phi i1 [ false, %20 ], [ false, %43 ], [ false, %46 ], [ true, %94 ], [ true, %91 ], [ false, %8 ], [ false, %31 ]
  ret i1 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmon_notify_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %6) #10
  br label %9

9:                                                ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lm90_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @enable_irq(i32 noundef %6) #10
  br label %9

9:                                                ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{ptr @lm90_regulator_disable, ptr @lm90_remove_pec, ptr @lm90_restore_conf}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
