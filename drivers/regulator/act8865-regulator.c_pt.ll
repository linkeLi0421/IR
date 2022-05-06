; ModuleID = '/llk/IR/drivers/regulator/act8865-regulator.c_pt.bc'
source_filename = "../drivers/regulator/act8865-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.act8865 = type { ptr, i32, i32 }
%struct.act8865_platform_data = type { i32, ptr }
%struct.act8865_regulator_data = type { i32, ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_act8865_regulator__247_797_act8865_pmic_driver_init6 = internal global ptr @act8865_pmic_driver_init, section ".initcall6.init", align 4
@act8865_pmic_driver = internal global %struct.i2c_driver { i32 0, ptr @act8865_pmic_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @act8865_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_act8865_pmic_driver_exit = internal global ptr @act8865_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [75 x i8] c"act8865_regulator.description=active-semi act88xx voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [61 x i8] c"act8865_regulator.author=Wenyou Yang <wenyou.yang@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [59 x i8] c"act8865_regulator.file=drivers/regulator/act8865-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [33 x i8] c"act8865_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"act8865\00", align 1
@act8865_ids = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"act8600\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"act8846\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"act8865\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@act8865_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"active-semi,act8600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"active-semi,act8846\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"active-semi,act8865\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"active-semi,vsel-high\00", align 1
@act8600_regulators = internal constant [10 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr @.str.8, ptr @.str.7, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.10, ptr @.str.11, ptr @.str.10, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.12, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 256, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8600_sudcdc_voltage_ranges, ptr null, i32 5, ptr null, ptr null, i32 0, i32 0, i32 64, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.17, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.18, ptr @.str.16, ptr @.str.18, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 112, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr @.str.16, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 128, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.9, ptr null, i32 8, i8 0, i32 1, i32 0, ptr @act8865_fixed_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @act8865_fixed_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1200000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@act8600_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr @act8600_write_ranges_table, ptr @act8600_read_ranges_table, ptr @act8600_volatile_ranges_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@act8846_regulators = internal constant [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.22, ptr @.str.8, ptr @.str.22, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.23, ptr @.str.11, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.24, ptr @.str.13, ptr @.str.24, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.29, ptr @.str.28, ptr @.str.29, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.30, ptr @.str.28, ptr @.str.30, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 104, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 105, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 105, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.9, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 112, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.34, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 128, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.36, ptr @.str.35, ptr @.str.36, i8 0, ptr @.str.9, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 144, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.37, ptr @.str.35, ptr @.str.37, i8 0, ptr @.str.9, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 160, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 161, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 161, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }], align 4
@act8865_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@act8865_alt_regulators = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.38, ptr @.str.8, ptr @.str.38, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 33, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.39, ptr @.str.11, ptr @.str.39, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.40, ptr @.str.13, ptr @.str.40, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.43, ptr @.str.42, ptr @.str.43, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.44, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.46, ptr @.str.45, ptr @.str.46, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }], align 4
@act8865_regulators = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.38, ptr @.str.8, ptr @.str.38, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.39, ptr @.str.11, ptr @.str.39, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.40, ptr @.str.13, ptr @.str.40, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.43, ptr @.str.42, ptr @.str.43, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.44, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.46, ptr @.str.45, ptr @.str.46, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid device id %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@act8865_i2c_client = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to set poweroff capability, already defined\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to probe charger\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"DCDC1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"vp1\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@act8865_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @act8865_set_mode, ptr @act8865_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @act8865_set_suspend_enable, ptr @act8865_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@act8865_voltage_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 23, i32 25000 }, %struct.linear_range { i32 1200000, i32 24, i32 47, i32 50000 }, %struct.linear_range { i32 2400000, i32 48, i32 63, i32 100000 }], align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"DCDC2\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"vp2\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"DCDC3\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"vp3\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SUDCDC_REG4\00", align 1
@act8600_sudcdc_voltage_ranges = internal constant [5 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 63, i32 0 }, %struct.linear_range { i32 3000000, i32 64, i32 159, i32 100000 }, %struct.linear_range { i32 12600000, i32 160, i32 191, i32 200000 }, %struct.linear_range { i32 19000000, i32 192, i32 247, i32 400000 }, %struct.linear_range { i32 41400000, i32 248, i32 255, i32 0 }], align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"inl\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"LDO_REG9\00", align 1
@act8865_fixed_ldo_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"LDO_REG10\00", align 1
@act8600_write_ranges_table = internal constant %struct.regmap_access_table { ptr @act8600_reg_ranges, i32 18, ptr @act8600_reg_ro_ranges, i32 2 }, align 4
@act8600_read_ranges_table = internal constant %struct.regmap_access_table { ptr @act8600_reg_ranges, i32 18, ptr null, i32 0 }, align 4
@act8600_volatile_ranges_table = internal constant %struct.regmap_access_table { ptr @act8600_reg_volatile_ranges, i32 13, ptr null, i32 0 }, align 4
@act8600_reg_ranges = internal constant [18 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 16, i32 16 }, %struct.regmap_range { i32 18, i32 18 }, %struct.regmap_range { i32 32, i32 32 }, %struct.regmap_range { i32 34, i32 34 }, %struct.regmap_range { i32 48, i32 48 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 64, i32 65 }, %struct.regmap_range { i32 80, i32 81 }, %struct.regmap_range { i32 96, i32 97 }, %struct.regmap_range { i32 112, i32 113 }, %struct.regmap_range { i32 128, i32 129 }, %struct.regmap_range { i32 145, i32 145 }, %struct.regmap_range { i32 161, i32 161 }, %struct.regmap_range { i32 168, i32 170 }, %struct.regmap_range { i32 176, i32 176 }, %struct.regmap_range { i32 178, i32 178 }, %struct.regmap_range { i32 193, i32 193 }], align 4
@act8600_reg_ro_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 170, i32 170 }, %struct.regmap_range { i32 193, i32 193 }], align 4
@act8600_reg_volatile_ranges = internal constant [13 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 18, i32 18 }, %struct.regmap_range { i32 34, i32 34 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 65, i32 65 }, %struct.regmap_range { i32 81, i32 81 }, %struct.regmap_range { i32 97, i32 97 }, %struct.regmap_range { i32 113, i32 113 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 168, i32 168 }, %struct.regmap_range { i32 170, i32 170 }, %struct.regmap_range { i32 176, i32 176 }, %struct.regmap_range { i32 193, i32 193 }], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"REG1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"REG2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"REG3\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"REG4\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"vp4\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"REG5\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"inl1\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"REG6\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"REG7\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"REG8\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"inl2\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"REG9\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"REG10\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"inl3\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"REG11\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"REG12\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"DCDC_REG1\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"DCDC_REG2\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"DCDC_REG3\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"LDO_REG1\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"inl45\00", align 1
@act8865_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @act8865_set_mode, ptr @act8865_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @act8865_set_suspend_enable, ptr @act8865_set_suspend_disable, ptr null, ptr null, ptr @regulator_set_pull_down_regmap }, align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"LDO_REG2\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"LDO_REG3\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"inl67\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"LDO_REG4\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"system-power-controller\00", align 1
@act8600_charger_desc = internal constant %struct.power_supply_desc { ptr @.str.48, i32 1, ptr null, i32 0, ptr @act8600_charger_properties, i32 1, ptr @act8600_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"act8600-charger\00", align 1
@act8600_charger_properties = internal global [1 x i32] zeroinitializer, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_act8865_pmic_driver_exit, ptr @__initcall__kmod_act8865_regulator__247_797_act8865_pmic_driver_init6, ptr @act8865_pmic_driver_exit], section "llvm.metadata"
@switch.table.act8865_of_map_mode = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 8], align 4
@switch.table.act8865_get_mode = private unnamed_addr constant [7 x i32] [i32 34, i32 50, i32 66, i32 81, i32 85, i32 97, i32 101], align 4
@switch.table.act8865_set_suspend_enable.49 = private unnamed_addr constant [7 x i32] [i32 184, i32 184, i32 184, i32 248, i32 248, i32 248, i32 248], align 4
@switch.table.act8865_set_suspend_disable = private unnamed_addr constant [7 x i32] [i32 36, i32 52, i32 68, i32 82, i32 86, i32 98, i32 102], align 4
@switch.table.act8865_set_suspend_disable.50 = private unnamed_addr constant [7 x i32] [i32 168, i32 168, i32 168, i32 232, i32 232, i32 232, i32 232], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @act8865_pmic_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @act8865_pmic_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @act8865_pmic_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @act8865_pmic_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8865_pmic_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.power_supply_config, align 4
  %4 = alloca %struct.regulator_config, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @act8865_dt_ids, ptr noundef %5) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %131, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = load ptr, ptr %6, align 8
  %17 = tail call ptr @of_get_property(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi ptr [ null, %12 ], [ %24, %20 ]
  %27 = phi i32 [ %15, %12 ], [ %22, %20 ]
  %28 = phi i32 [ %19, %12 ], [ 0, %20 ]
  switch i32 %27, label %33 [
    i32 0, label %34
    i32 2, label %29
    i32 1, label %30
  ]

29:                                               ; preds = %25
  br label %34

30:                                               ; preds = %25
  %31 = icmp eq i32 %28, 0
  %32 = select i1 %31, ptr @act8865_regulators, ptr @act8865_alt_regulators
  br label %34

33:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %27) #9
  br label %131

34:                                               ; preds = %30, %29, %25
  %35 = phi ptr [ %32, %30 ], [ @act8846_regulators, %29 ], [ @act8600_regulators, %25 ]
  %36 = phi i32 [ 7, %30 ], [ 12, %29 ], [ 10, %25 ]
  %37 = phi ptr [ @act8865_regmap_config, %30 ], [ @act8865_regmap_config, %29 ], [ @act8600_regmap_config, %25 ]
  %38 = phi i1 [ true, %30 ], [ true, %29 ], [ false, %25 ]
  %39 = phi i32 [ 1, %30 ], [ 195, %29 ], [ -1, %25 ]
  %40 = phi i32 [ 32, %30 ], [ 24, %29 ], [ -1, %25 ]
  %41 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %131, label %43

43:                                               ; preds = %34
  %44 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %37, ptr noundef null, ptr noundef null) #8
  store ptr %44, ptr %41, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = ptrtoint ptr %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %47) #9
  br label %131

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 8
  %50 = tail call ptr @of_find_property(ptr noundef %49, ptr noundef nonnull @.str.47, ptr noundef null) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @pm_power_off, align 4
  %54 = icmp eq ptr %53, null
  %55 = and i1 %38, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  store ptr %0, ptr @act8865_i2c_client, align 4
  %57 = getelementptr inbounds %struct.act8865, ptr %41, i32 0, i32 1
  store i32 %39, ptr %57, align 4
  %58 = getelementptr inbounds %struct.act8865, ptr %41, i32 0, i32 2
  store i32 %40, ptr %58, align 4
  store ptr @act8865_power_off, ptr @pm_power_off, align 4
  br label %60

59:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %60

60:                                               ; preds = %59, %56, %48
  %61 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  %62 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 4
  %63 = icmp eq ptr %26, null
  %64 = getelementptr inbounds %struct.act8865_platform_data, ptr %26, i32 0, i32 1
  %65 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  %66 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  %67 = getelementptr inbounds i8, ptr %4, i32 4
  br label %68

68:                                               ; preds = %103, %60
  %69 = phi ptr [ %44, %60 ], [ %104, %103 ]
  %70 = phi i32 [ 0, %60 ], [ %101, %103 ]
  %71 = getelementptr %struct.regulator_desc, ptr %35, i32 %70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %67, i8 0, i32 20, i1 false)
  store ptr %5, ptr %4, align 4
  store ptr %41, ptr %61, align 4
  store ptr %69, ptr %62, align 4
  br i1 %63, label %94, label %72

72:                                               ; preds = %68
  %73 = getelementptr %struct.regulator_desc, ptr %35, i32 %70, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %26, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load ptr, ptr %64, align 4
  br label %82

79:                                               ; preds = %82
  %80 = add nuw nsw i32 %83, 1
  %81 = icmp eq i32 %80, %75
  br i1 %81, label %94, label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ 0, %77 ], [ %80, %79 ]
  %84 = getelementptr %struct.act8865_regulator_data, ptr %78, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, %74
  br i1 %86, label %87, label %79

87:                                               ; preds = %82
  %88 = icmp eq ptr %84, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %87
  %90 = getelementptr %struct.act8865_regulator_data, ptr %78, i32 %83, i32 2
  %91 = load ptr, ptr %90, align 4
  store ptr %91, ptr %65, align 4
  %92 = getelementptr %struct.act8865_regulator_data, ptr %78, i32 %83, i32 3
  %93 = load ptr, ptr %92, align 4
  store ptr %93, ptr %66, align 4
  br label %94

94:                                               ; preds = %89, %87, %79, %72, %68
  %95 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef %71, ptr noundef nonnull %4) #8
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %98) #9
  %99 = ptrtoint ptr %95 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %131

100:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %101 = add nuw nsw i32 %70, 1
  %102 = icmp eq i32 %101, %36
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %41, align 4
  br label %68

105:                                              ; preds = %100
  %106 = icmp eq i32 %27, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %105
  %108 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %109 = load ptr, ptr %6, align 8
  store ptr %109, ptr %3, align 4
  %110 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 1
  store ptr null, ptr %110, align 4
  %111 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 2
  store ptr %108, ptr %111, align 4
  %112 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 3
  store ptr null, ptr %112, align 4
  %113 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 4
  store ptr null, ptr %113, align 4
  %114 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 5
  store i32 0, ptr %114, align 4
  %115 = call ptr @devm_power_supply_register(ptr noundef %5, ptr noundef nonnull @act8600_charger_desc, ptr noundef nonnull %3) #8
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  %117 = ptrtoint ptr %115 to i32
  %118 = select i1 %116, i32 %117, i32 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %107
  %121 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %41, ptr %121, align 8
  br label %131

122:                                              ; preds = %107
  %123 = icmp eq i32 %118, -517
  br i1 %123, label %131, label %124

124:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #9
  br label %131

125:                                              ; preds = %105
  %126 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %41, ptr %126, align 8
  %127 = icmp eq i32 %27, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load ptr, ptr %41, align 4
  %130 = call i32 @regmap_write(ptr noundef %129, i32 noundef 11, i32 noundef 239) #8
  br label %131

131:                                              ; preds = %128, %125, %124, %122, %120, %97, %46, %34, %33, %9
  %132 = phi i32 [ -22, %33 ], [ %47, %46 ], [ -12, %34 ], [ %117, %124 ], [ -517, %122 ], [ %130, %128 ], [ 0, %125 ], [ %99, %97 ], [ 0, %120 ], [ -19, %9 ]
  ret i32 %132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @act8865_power_off() #5 {
  %1 = load ptr, ptr @act8865_i2c_client, align 4
  %2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.act8865, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.act8865, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %6, i32 noundef %8) #8
  br label %10

10:                                               ; preds = %10, %0
  br label %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @act8865_of_map_mode(i32 noundef %0) #7 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [3 x i32], ptr @switch.table.act8865_of_map_mode, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8865_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_get_mode, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  switch i32 %1, label %18 [
    i32 1, label %10
    i32 2, label %10
    i32 8, label %12
  ]

10:                                               ; preds = %7, %7
  %11 = icmp ult i32 %5, 3
  br label %14

12:                                               ; preds = %7
  %13 = icmp ugt i32 %5, 2
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i1 [ %13, %12 ], [ %11, %10 ]
  %16 = select i1 %15, i32 32, i32 0
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %9, i32 noundef 32, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %18

18:                                               ; preds = %14, %7, %2
  %19 = phi i32 [ %17, %14 ], [ -22, %2 ], [ -22, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8865_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_get_mode, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %4, i32 noundef %9, ptr noundef nonnull %2) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = icmp ult i32 %5, 3
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %13, label %17, label %18

17:                                               ; preds = %12
  br i1 %16, label %19, label %20

18:                                               ; preds = %12
  br i1 %16, label %20, label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %18, %17, %7, %1
  %21 = phi i32 [ 8, %19 ], [ -22, %1 ], [ %10, %7 ], [ 1, %17 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8865_set_suspend_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 7
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_disable, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_enable.49, i32 0, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef %12) #8
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %13, %6 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8865_set_suspend_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 7
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_disable, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_disable.50, i32 0, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef %12) #8
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %13, %6 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_pull_down_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8600_charger_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef 170, ptr noundef nonnull %4) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 48
  %14 = trunc i8 %13 to i6
  switch i6 %14, label %15 [
    i6 -32, label %20
    i6 16, label %18
  ]

15:                                               ; preds = %10
  %16 = icmp eq i8 %13, 0
  %17 = select i1 %16, i32 2, i32 0
  br label %20

18:                                               ; preds = %10
  br label %20

19:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %22

20:                                               ; preds = %18, %15, %10
  %21 = phi i32 [ 3, %18 ], [ %17, %15 ], [ 1, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %20, %19, %3
  %23 = phi i32 [ 0, %20 ], [ %8, %19 ], [ -22, %3 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
