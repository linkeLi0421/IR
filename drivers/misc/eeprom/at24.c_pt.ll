; ModuleID = '/llk/IR/drivers/misc/eeprom/at24.c_pt.bc'
source_filename = "../drivers/misc/eeprom/at24.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.at24_chip_data = type { i32, i8, i8, ptr }
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
%struct.at24_data = type { %struct.mutex, i32, i32, i32, i32, i16, i8, ptr, ptr, ptr, i8, [0 x ptr] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_io_limit = internal constant [14 x i8] c"at24.io_limit\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@at24_io_limit = internal global i32 128, align 4
@__param_io_limit = internal constant %struct.kernel_param { ptr @__param_str_io_limit, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @at24_io_limit } }, section "__param", align 4
@__UNIQUE_ID_io_limittype248 = internal constant [28 x i8] c"at24.parmtype=io_limit:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_at24_io_limit249 = internal constant [60 x i8] c"at24.parm=at24_io_limit:Maximum bytes per I/O (default 128)\00", section ".modinfo", align 1
@__param_str_write_timeout = internal constant [19 x i8] c"at24.write_timeout\00", align 1
@at24_write_timeout = internal global i32 25, align 4
@__param_write_timeout = internal constant %struct.kernel_param { ptr @__param_str_write_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @at24_write_timeout } }, section "__param", align 4
@__UNIQUE_ID_write_timeouttype250 = internal constant [33 x i8] c"at24.parmtype=write_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_at24_write_timeout251 = internal constant [69 x i8] c"at24.parm=at24_write_timeout:Time (in ms) to try writes (default 25)\00", section ".modinfo", align 1
@__initcall__kmod_at24__254_853_at24_init6 = internal global ptr @at24_init, section ".initcall6.init", align 4
@at24_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr @at24_remove, ptr @at24_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at24_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at24_pm_ops, ptr null, ptr null }, ptr @at24_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, align 4
@__exitcall_at24_exit = internal global ptr @at24_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [45 x i8] c"at24.description=Driver for most I2C EEPROMs\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [44 x i8] c"at24.author=David Brownell and Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [35 x i8] c"at24.file=drivers/misc/eeprom/at24\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [17 x i8] c"at24.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [38 x i8] c"\013at24: at24_io_limit must not be 0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"at24\00", align 1
@at24_of_match = internal constant [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c00 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24mac402\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24mac402 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24mac602\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24mac602 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,spd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_spd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c04 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs04 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c08 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs08 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c32 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs32 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c64 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs64 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c128 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c256 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c512 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c1024 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c1025\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c1025 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c2048\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c2048 }, %struct.of_device_id zeroinitializer], align 4
@at24_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at24_suspend, ptr @at24_resume, ptr null }, align 4
@at24_ids = internal constant [27 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"24c00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c00 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c01 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs01\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs01 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c02 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs02\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs02 to i32) }, %struct.i2c_device_id { [20 x i8] c"24mac402\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24mac402 to i32) }, %struct.i2c_device_id { [20 x i8] c"24mac602\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24mac602 to i32) }, %struct.i2c_device_id { [20 x i8] c"spd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_spd to i32) }, %struct.i2c_device_id { [20 x i8] c"24c02-vaio\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c02_vaio to i32) }, %struct.i2c_device_id { [20 x i8] c"24c04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c04 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs04\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs04 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c08 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs08\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs08 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c16 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs16\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs16 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c32 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs32\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs32 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c64 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs64\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs64 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c128\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c128 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c256\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c256 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c512\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c512 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c1024\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c1024 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c1025\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c1025 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c2048\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c2048 to i32) }, %struct.i2c_device_id { [20 x i8] c"at24\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pagesize\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"no-read-rollover\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"address-width\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Override address width to be 8, while default is 16\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Bad \22address-width\22 property: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"page_size must not be 0!\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"page_size looks suspicious (no power of 2)!\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"num-addresses\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"invalid device data - cannot have both AT24_FLAG_SERIAL & AT24_FLAG_MAC.\00", align 1
@at24_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"&at24->lock\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Failed to enable vcc regulator\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"%u byte %s EEPROM, writable, %u bytes/write\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"%u byte %s EEPROM, read-only\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@at24_data_24c00 = internal constant %struct.at24_chip_data { i32 16, i8 16, i8 0, ptr null }, align 4
@at24_data_24c01 = internal constant %struct.at24_chip_data { i32 128, i8 0, i8 0, ptr null }, align 4
@at24_data_24cs01 = internal constant %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, align 4
@at24_data_24c02 = internal constant %struct.at24_chip_data { i32 256, i8 0, i8 0, ptr null }, align 4
@at24_data_24cs02 = internal constant %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, align 4
@at24_data_24mac402 = internal constant %struct.at24_chip_data { i32 6, i8 68, i8 0, ptr null }, align 4
@at24_data_24mac602 = internal constant %struct.at24_chip_data { i32 8, i8 68, i8 0, ptr null }, align 4
@at24_data_spd = internal constant %struct.at24_chip_data { i32 256, i8 96, i8 0, ptr null }, align 4
@at24_data_24c04 = internal constant %struct.at24_chip_data { i32 512, i8 0, i8 0, ptr null }, align 4
@at24_data_24cs04 = internal constant %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, align 4
@at24_data_24c08 = internal constant %struct.at24_chip_data { i32 1024, i8 0, i8 0, ptr null }, align 4
@at24_data_24cs08 = internal constant %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, align 4
@at24_data_24c16 = internal constant %struct.at24_chip_data { i32 2048, i8 0, i8 0, ptr null }, align 4
@at24_data_24cs16 = internal constant %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, align 4
@at24_data_24c32 = internal constant %struct.at24_chip_data { i32 4096, i8 -128, i8 0, ptr null }, align 4
@at24_data_24cs32 = internal constant %struct.at24_chip_data { i32 16, i8 -56, i8 0, ptr null }, align 4
@at24_data_24c64 = internal constant %struct.at24_chip_data { i32 8192, i8 -128, i8 0, ptr null }, align 4
@at24_data_24cs64 = internal constant %struct.at24_chip_data { i32 16, i8 -56, i8 0, ptr null }, align 4
@at24_data_24c128 = internal constant %struct.at24_chip_data { i32 16384, i8 -128, i8 0, ptr null }, align 4
@at24_data_24c256 = internal constant %struct.at24_chip_data { i32 32768, i8 -128, i8 0, ptr null }, align 4
@at24_data_24c512 = internal constant %struct.at24_chip_data { i32 65536, i8 -128, i8 0, ptr null }, align 4
@at24_data_24c1024 = internal constant %struct.at24_chip_data { i32 131072, i8 -128, i8 0, ptr null }, align 4
@at24_data_24c1025 = internal constant %struct.at24_chip_data { i32 131072, i8 -128, i8 2, ptr null }, align 4
@at24_data_24c2048 = internal constant %struct.at24_chip_data { i32 262144, i8 -128, i8 0, ptr null }, align 4
@at24_data_24c02_vaio = internal constant %struct.at24_chip_data { i32 256, i8 96, i8 0, ptr @at24_read_post_vaio }, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_at24_io_limit249, ptr @__UNIQUE_ID_at24_write_timeout251, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_io_limittype248, ptr @__UNIQUE_ID_license258, ptr @__UNIQUE_ID_write_timeouttype250, ptr @__exitcall_at24_exit, ptr @__initcall__kmod_at24__254_853_at24_init6, ptr @__param_io_limit, ptr @__param_write_timeout, ptr @at24_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at24_init() #0 section ".init.text" {
  %1 = load i32, ptr @at24_io_limit, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %9

5:                                                ; preds = %0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #8, !range !8
  %7 = lshr i32 -2147483648, %6
  store i32 %7, ptr @at24_io_limit, align 4
  %8 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @at24_driver) #8
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at24_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @at24_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at24_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 11, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.at24_data, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_disable(ptr noundef %10) #8
  br label %12

12:                                               ; preds = %8, %1
  %13 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at24_probe(ptr noundef %0) #4 {
  %2 = alloca %struct.regmap_config, align 4
  %3 = alloca %struct.nvmem_config, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %2, i8 0, i32 172, i1 false)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %3, i8 0, i32 88, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !9
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %11) #8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.i2c_algorithm, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %19) #8
  %25 = and i32 %24, 134217728
  %26 = icmp ne i32 %25, 0
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr @i2c_match_id(ptr noundef nonnull @at24_ids, ptr noundef %0) #8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = tail call ptr @of_match_device(ptr noundef nonnull @at24_of_match, ptr noundef %9) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @of_device_get_match_data(ptr noundef %9) #8
  br label %42

36:                                               ; preds = %31, %1
  %37 = icmp eq ptr %29, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.i2c_device_id, ptr %29, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = inttoptr i32 %40 to ptr
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %35, %34 ], [ %41, %38 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %45, %42, %36
  %48 = phi ptr [ %43, %45 ], [ inttoptr (i32 -19 to ptr), %36 ], [ inttoptr (i32 -19 to ptr), %42 ]
  %49 = ptrtoint ptr %48 to i32
  br label %281

50:                                               ; preds = %45
  %51 = call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 1, ptr %5, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = getelementptr inbounds %struct.at24_chip_data, ptr %43, i32 0, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = call zeroext i1 @device_property_present(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  %59 = or i32 %57, 64
  %60 = select i1 %58, i32 %59, i32 %57
  %61 = call zeroext i1 @device_property_present(ptr noundef %9, ptr noundef nonnull @.str.4) #8
  %62 = or i32 %60, 2
  %63 = select i1 %61, i32 %62, i32 %60
  %64 = call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, i32 noundef 1) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = load i32, ptr %6, align 4
  switch i32 %67, label %76 [
    i32 8, label %68
    i32 16, label %74
  ]

68:                                               ; preds = %66
  %69 = and i32 %63, 128
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  br label %72

72:                                               ; preds = %71, %68
  %73 = and i32 %63, 127
  br label %77

74:                                               ; preds = %66
  %75 = or i32 %63, 128
  br label %77

76:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %67) #7
  br label %77

77:                                               ; preds = %76, %74, %72, %54
  %78 = phi i32 [ %63, %54 ], [ %63, %76 ], [ %75, %74 ], [ %73, %72 ]
  %79 = call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 1) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %43, align 4
  store i32 %82, ptr %4, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = xor i1 %18, true
  %85 = select i1 %84, i1 true, i1 %26
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 1, ptr %5, align 4
  br label %91

87:                                               ; preds = %83
  %88 = load i32, ptr %5, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9) #7
  br label %281

91:                                               ; preds = %87, %86
  %92 = phi i32 [ 1, %86 ], [ %88, %87 ]
  %93 = call i32 @llvm.ctpop.i32(i32 %92) #8, !range !8
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.10) #7
  br label %96

96:                                               ; preds = %95, %91
  %97 = call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef nonnull %7, i32 noundef 1) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = and i32 %78, 16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 8, ptr %7, align 4
  br label %111

103:                                              ; preds = %99
  %104 = load i32, ptr %4, align 4
  %105 = and i32 %78, 128
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 255, i32 65535
  %108 = add i32 %107, %104
  %109 = select i1 %106, i32 8, i32 16
  %110 = lshr i32 %108, %109
  store i32 %110, ptr %7, align 4
  br label %111

111:                                              ; preds = %103, %102, %96
  %112 = and i32 %78, 12
  %113 = icmp eq i32 %112, 12
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.12) #7
  br label %281

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 4
  store i32 8, ptr %116, align 4
  %117 = and i32 %78, 128
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 8, i32 16
  %120 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 1
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 11
  store i8 1, ptr %121, align 4
  %122 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #8
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = ptrtoint ptr %122 to i32
  br label %281

126:                                              ; preds = %115
  %127 = load i32, ptr %7, align 4
  %128 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %127, i32 4) #8
  %129 = extractvalue { i32, i1 } %128, 1
  %130 = extractvalue { i32, i1 } %128, 0
  %131 = call i32 @llvm.uadd.sat.i32(i32 %130, i32 56) #8
  %132 = select i1 %129, i32 -1, i32 %131
  %133 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %132, i32 noundef 3520) #8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %281, label %135

135:                                              ; preds = %126
  call void @__mutex_init(ptr noundef nonnull %133, ptr noundef nonnull @.str.13, ptr noundef nonnull @at24_probe.__key) #8
  %136 = load i32, ptr %4, align 4
  %137 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 4
  store i32 %136, ptr %137, align 4
  %138 = load i32, ptr %5, align 4
  %139 = trunc i32 %138 to i16
  %140 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 5
  store i16 %139, ptr %140, align 4
  %141 = trunc i32 %78 to i8
  %142 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 6
  store i8 %141, ptr %142, align 2
  %143 = getelementptr inbounds %struct.at24_chip_data, ptr %43, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 9
  store ptr %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.at24_chip_data, ptr %43, i32 0, i32 2
  %147 = load i8, ptr %146, align 1
  %148 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 10
  store i8 %147, ptr %148, align 4
  %149 = load i32, ptr %7, align 4
  %150 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 2
  store i32 %149, ptr %150, align 4
  %151 = and i32 %78, 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %135
  %154 = sub i32 160, %136
  br label %161

155:                                              ; preds = %135
  %156 = and i32 %78, 136
  %157 = icmp eq i32 %156, 136
  %158 = shl i32 %78, 4
  %159 = and i32 %158, 128
  %160 = select i1 %157, i32 2048, i32 %159
  br label %161

161:                                              ; preds = %155, %153
  %162 = phi i32 [ %154, %153 ], [ %160, %155 ]
  %163 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 3
  store i32 %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 11
  store ptr %122, ptr %164, align 4
  %165 = call ptr @devm_regulator_get(ptr noundef %9, ptr noundef nonnull @.str.14) #8
  %166 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 8
  store ptr %165, ptr %166, align 4
  %167 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = ptrtoint ptr %165 to i32
  br label %281

170:                                              ; preds = %161
  %171 = and i32 %78, 64
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i32, ptr %5, align 4
  %175 = load i32, ptr @at24_io_limit, align 4
  %176 = call i32 @llvm.umin.i32(i32 %174, i32 %175)
  %177 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 1
  %178 = icmp ugt i32 %176, 32
  %179 = select i1 %18, i1 %178, i1 false
  %180 = select i1 %179, i32 32, i32 %176
  store i32 %180, ptr %177, align 4
  br label %181

181:                                              ; preds = %173, %170
  %182 = load i32, ptr %7, align 4
  %183 = icmp ugt i32 %182, 1
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  br label %186

186:                                              ; preds = %200, %184
  %187 = phi i32 [ 1, %184 ], [ %202, %200 ]
  %188 = load ptr, ptr %10, align 8
  %189 = load i16, ptr %185, align 2
  %190 = load i8, ptr %148, align 4
  %191 = zext i8 %190 to i32
  %192 = shl i32 %187, %191
  %193 = trunc i32 %192 to i16
  %194 = add i16 %189, %193
  %195 = call ptr @devm_i2c_new_dummy_device(ptr noundef %9, ptr noundef %188, i16 noundef zeroext %194) #8
  %196 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %196, label %205, label %197

197:                                              ; preds = %186
  %198 = call ptr @__devm_regmap_init_i2c(ptr noundef %195, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #8
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = getelementptr %struct.at24_data, ptr %133, i32 0, i32 11, i32 %187
  store ptr %198, ptr %201, align 4
  %202 = add nuw i32 %187, 1
  %203 = load i32, ptr %7, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %186, label %208

205:                                              ; preds = %197, %186
  %206 = phi ptr [ %195, %186 ], [ %198, %197 ]
  %207 = ptrtoint ptr %206 to i32
  br label %281

208:                                              ; preds = %200, %181
  %209 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 2
  store i32 -2, ptr %209, align 4
  %210 = call zeroext i1 @device_property_present(ptr noundef %9, ptr noundef nonnull @.str.15) #8
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 1
  %213 = call i32 @device_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef %212) #8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %224, label %281

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load ptr, ptr %9, align 4
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi ptr [ %220, %219 ], [ %217, %215 ]
  %223 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 1
  store ptr %222, ptr %223, align 4
  br label %224

224:                                              ; preds = %221, %211
  %225 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 9
  store i32 1, ptr %225, align 4
  store ptr %9, ptr %3, align 4
  %226 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 10
  %227 = lshr exact i32 %171, 6
  %228 = trunc i32 %227 to i8
  store i8 %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 11
  %230 = lshr i8 %141, 5
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, ptr %229, align 1
  %233 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 3
  store ptr null, ptr %233, align 4
  %234 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 22
  store i8 1, ptr %234, align 4
  %235 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 23
  store ptr %9, ptr %235, align 4
  %236 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 15
  store ptr @at24_read, ptr %236, align 4
  %237 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 16
  store ptr @at24_write, ptr %237, align 4
  %238 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 21
  store ptr %133, ptr %238, align 4
  %239 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 20
  store i32 1, ptr %239, align 4
  %240 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 19
  store i32 1, ptr %240, align 4
  %241 = load i32, ptr %4, align 4
  %242 = getelementptr inbounds %struct.nvmem_config, ptr %3, i32 0, i32 18
  store i32 %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %133, ptr %243, align 8
  %244 = load ptr, ptr %166, align 4
  %245 = call i32 @regulator_enable(ptr noundef %244) #8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %224
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16) #7
  br label %281

248:                                              ; preds = %224
  %249 = call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %9) #8
  %250 = call ptr @devm_nvmem_register(ptr noundef %9, ptr noundef nonnull %3) #8
  %251 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 7
  store ptr %250, ptr %251, align 4
  %252 = icmp ugt ptr %250, inttoptr (i32 -4096 to ptr)
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #8
  %254 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 11, i32 18
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %166, align 4
  %259 = call i32 @regulator_disable(ptr noundef %258) #8
  br label %260

260:                                              ; preds = %257, %253
  %261 = load ptr, ptr %251, align 4
  %262 = ptrtoint ptr %261 to i32
  br label %281

263:                                              ; preds = %248
  %264 = call i32 @at24_read(ptr noundef nonnull %133, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 1)
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %263
  call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #8
  %267 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 11, i32 18
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %281, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %166, align 4
  %272 = call i32 @regulator_disable(ptr noundef %271) #8
  br label %281

273:                                              ; preds = %263
  %274 = call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 0) #8
  %275 = load i32, ptr %4, align 4
  %276 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  br i1 %172, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.at24_data, ptr %133, i32 0, i32 1
  %279 = load i32, ptr %278, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %275, ptr noundef %276, i32 noundef %279) #7
  br label %281

280:                                              ; preds = %273
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef %275, ptr noundef %276) #7
  br label %281

281:                                              ; preds = %280, %277, %270, %266, %260, %247, %211, %205, %168, %126, %124, %114, %90, %47
  %282 = phi i32 [ %49, %47 ], [ -22, %114 ], [ %125, %124 ], [ %169, %168 ], [ %245, %247 ], [ %262, %260 ], [ -22, %90 ], [ -12, %126 ], [ %207, %205 ], [ %213, %211 ], [ -19, %270 ], [ -19, %266 ], [ 0, %280 ], [ 0, %277 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %2) #8
  ret i32 %282
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at24_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @regmap_get_device(ptr noundef %6) #8
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %80, label %9, !prof !10

9:                                                ; preds = %4
  %10 = add i32 %3, %1
  %11 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %80, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #8, !srcloc !12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #8, !srcloc !13
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %80, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  br label %80

23:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef %0) #8
  %24 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 3
  br label %26

26:                                               ; preds = %70, %23
  %27 = phi i32 [ %71, %70 ], [ 0, %23 ]
  %28 = phi i32 [ %72, %70 ], [ %3, %23 ]
  %29 = getelementptr i8, ptr %2, i32 %27
  %30 = add i32 %27, %1
  %31 = load i8, ptr %24, align 2
  %32 = icmp sgt i8 %31, -1
  %33 = select i1 %32, i32 8, i32 16
  %34 = select i1 %32, i32 255, i32 65535
  %35 = lshr i32 %30, %33
  %36 = and i32 %34, %30
  %37 = getelementptr %struct.at24_data, ptr %0, i32 0, i32 11, i32 %35
  %38 = load ptr, ptr %37, align 4
  %39 = zext i8 %31 to i32
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %26
  %43 = and i32 %39, 128
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 256, i32 65536
  %46 = sub nsw i32 %45, %36
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 %28) #8
  br label %48

48:                                               ; preds = %42, %26
  %49 = phi i32 [ %28, %26 ], [ %47, %42 ]
  %50 = load i32, ptr @at24_io_limit, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %49, i32 %50) #8
  %52 = load i32, ptr %25, align 4
  %53 = add i32 %52, %36
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = load i32, ptr @at24_write_timeout, align 4
  %56 = tail call i32 @__msecs_to_jiffies(i32 noundef %55) #8
  %57 = add i32 %56, %54
  br label %58

58:                                               ; preds = %62, %48
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = tail call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef %53, ptr noundef %29, i32 noundef %51) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %63 = sub i32 %59, %57
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %58, label %67

65:                                               ; preds = %58
  %66 = icmp slt i32 %51, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %65, %62
  %68 = phi i32 [ -110, %62 ], [ %51, %65 ]
  tail call void @mutex_unlock(ptr noundef %0) #8
  %69 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  br label %80

70:                                               ; preds = %65
  %71 = add i32 %51, %27
  %72 = sub i32 %28, %51
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %26

74:                                               ; preds = %70
  tail call void @mutex_unlock(ptr noundef %0) #8
  %75 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  %76 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 9
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79, !prof !15

79:                                               ; preds = %74
  tail call void %77(i32 noundef %1, ptr noundef %2, i32 noundef %71) #8
  br label %80

80:                                               ; preds = %79, %74, %67, %22, %17, %9, %4
  %81 = phi i32 [ %68, %67 ], [ 0, %4 ], [ -22, %9 ], [ 0, %79 ], [ 0, %74 ], [ %15, %17 ], [ %15, %22 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at24_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @regmap_get_device(ptr noundef %6) #8
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %73, label %9, !prof !10

9:                                                ; preds = %4
  %10 = add i32 %3, %1
  %11 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %73, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #8, !srcloc !12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #8, !srcloc !13
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  br label %73

23:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef %0) #8
  %24 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.at24_data, ptr %0, i32 0, i32 5
  br label %27

27:                                               ; preds = %66, %23
  %28 = phi ptr [ %67, %66 ], [ %2, %23 ]
  %29 = phi i32 [ %69, %66 ], [ %3, %23 ]
  %30 = phi i32 [ %68, %66 ], [ %1, %23 ]
  %31 = load i8, ptr %24, align 2
  %32 = icmp sgt i8 %31, -1
  %33 = select i1 %32, i32 8, i32 16
  %34 = select i1 %32, i32 255, i32 65535
  %35 = lshr i32 %30, %33
  %36 = and i32 %34, %30
  %37 = getelementptr %struct.at24_data, ptr %0, i32 0, i32 11, i32 %35
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %25, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %29) #8
  %41 = load i16, ptr %26, align 4
  %42 = zext i16 %41 to i32
  %43 = add nuw nsw i32 %36, %42
  %44 = urem i32 %43, %42
  %45 = sub nsw i32 %43, %44
  %46 = add i32 %40, %36
  %47 = icmp ugt i32 %46, %45
  %48 = sub nsw i32 %45, %36
  %49 = select i1 %47, i32 %48, i32 %40
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = load i32, ptr @at24_write_timeout, align 4
  %52 = tail call i32 @__msecs_to_jiffies(i32 noundef %51) #8
  %53 = add i32 %52, %50
  br label %54

54:                                               ; preds = %58, %27
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = tail call i32 @regmap_bulk_write(ptr noundef %38, i32 noundef %36, ptr noundef %28, i32 noundef %49) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %59 = sub i32 %55, %53
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %54, label %63

61:                                               ; preds = %54
  %62 = icmp slt i32 %49, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %61, %58
  %64 = phi i32 [ -110, %58 ], [ %49, %61 ]
  tail call void @mutex_unlock(ptr noundef %0) #8
  %65 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  br label %73

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %28, i32 %49
  %68 = add i32 %49, %30
  %69 = sub i32 %29, %49
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %27

71:                                               ; preds = %66
  tail call void @mutex_unlock(ptr noundef %0) #8
  %72 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  br label %73

73:                                               ; preds = %71, %63, %22, %17, %9, %4
  %74 = phi i32 [ %64, %63 ], [ 0, %71 ], [ -22, %4 ], [ -22, %9 ], [ %15, %17 ], [ %15, %22 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at24_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at24_data, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regulator_disable(ptr noundef %5) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at24_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at24_data, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regulator_enable(ptr noundef %5) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at24_read_post_vaio(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #4 {
  %4 = tail call zeroext i1 @capable(i32 noundef 21) #8
  %5 = icmp eq i32 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %3
  %8 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %9 = add i32 %8, %0
  %10 = icmp ult i32 %9, 32
  %11 = and i32 %9, -32
  %12 = icmp eq i32 %11, 192
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %1, i32 %8
  store i8 0, ptr %15, align 1
  br label %16

16:                                               ; preds = %14, %7
  %17 = add nuw i32 %8, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148029109}
!12 = !{i64 527419, i64 2148017390, i64 2148017416, i64 2148017463, i64 2148017485, i64 2148017513, i64 2148017533}
!13 = !{i64 513988, i64 514013, i64 514035, i64 514051, i64 514063, i64 514083, i64 514107, i64 514123, i64 514135}
!14 = !{i64 2148029235}
!15 = !{!"branch_weights", i32 2000, i32 1}
