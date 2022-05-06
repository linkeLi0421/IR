; ModuleID = '/llk/IR/drivers/regulator/s5m8767.c_pt.bc'
source_filename = "../drivers/regulator/s5m8767.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.sec_voltage_desc = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sec_platform_data = type { ptr, ptr, i32, [3 x i32], [3 x i32], [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.sec_regulator_data = type { i32, ptr, ptr, ptr }
%struct.sec_opmode_data = type { i32, i32 }
%struct.s5m8767_info = type { ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [3 x i32], [3 x i32], i32 }

@__initcall__kmod_s5m8767__247_1007_s5m8767_pmic_driver_init6 = internal global ptr @s5m8767_pmic_driver_init, section ".initcall6.init", align 4
@s5m8767_pmic_driver = internal global %struct.platform_driver { ptr @s5m8767_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5m8767_pmic_id, i8 0 }, align 4
@__exitcall_s5m8767_pmic_driver_exit = internal global ptr @s5m8767_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [50 x i8] c"s5m8767.author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [53 x i8] c"s5m8767.description=Samsung S5M8767 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [39 x i8] c"s5m8767.file=drivers/regulator/s5m8767\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [20 x i8] c"s5m8767.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"s5m8767-pmic\00", align 1
@s5m8767_pmic_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s5m8767-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Platform data not supplied\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"S5M8767 GPIO DVS NOT VALID\0A\00", align 1
@buck_voltage_val2 = internal constant %struct.sec_voltage_desc { i32 1600000, i32 600000, i32 6250 }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"GPIO NOT VALID\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"S5M8767 SET1\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"S5M8767 SET2\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"S5M8767 SET3\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"S5M8767 DS2\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"S5M8767 DS3\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"S5M8767 DS4\00", align 1
@reg_voltage_map = internal unnamed_addr constant [37 x ptr] [ptr @ldo_voltage_val2, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val2, ptr @ldo_voltage_val2, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @buck_voltage_val1, ptr @buck_voltage_val2, ptr @buck_voltage_val2, ptr @buck_voltage_val2, ptr @buck_voltage_val1, ptr @buck_voltage_val1, ptr @buck_voltage_val3, ptr @buck_voltage_val3, ptr @buck_voltage_val3], align 4
@regulators = internal global [37 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.60, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.64, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.65, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.66, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.67, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.68, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.69, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.70, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.71, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.72, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.73, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 0, i32 0, ptr @s5m8767_buck78_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.74, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 0, i32 0, ptr @s5m8767_buck78_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"error reading registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"regulator init failed for %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"failed to enable gpio control over %s: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"could not find regulators sub-node\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"don't know how to configure regulator %pOFn\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"s5m8767,pmic-ext-control\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"s5m8767\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"op_mode\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"no op_mode property at %pOF\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"s5m8767,pmic-buck2-uses-gpio-dvs\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"s5m8767,pmic-buck2-dvs-voltage\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"buck2 voltages not specified\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"s5m8767,pmic-buck3-uses-gpio-dvs\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"s5m8767,pmic-buck3-dvs-voltage\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"buck3 voltages not specified\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"s5m8767,pmic-buck4-uses-gpio-dvs\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"s5m8767,pmic-buck4-dvs-voltage\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"buck4 voltages not specified\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"s5m8767,pmic-buck-default-dvs-idx\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"invalid value for default dvs index, use 0\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"s5m8767,pmic-buck2-ramp-enable\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"s5m8767,pmic-buck3-ramp-enable\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"s5m8767,pmic-buck4-ramp-enable\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"s5m8767,pmic-buck-ramp-delay\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"s5m8767,pmic-buck-dvs-gpios\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"invalid gpio[%d]: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"s5m8767,pmic-buck-ds-gpios\00", align 1
@ldo_voltage_val2 = internal constant %struct.sec_voltage_desc { i32 2375000, i32 800000, i32 25000 }, align 4
@ldo_voltage_val1 = internal constant %struct.sec_voltage_desc { i32 3950000, i32 800000, i32 50000 }, align 4
@buck_voltage_val1 = internal constant %struct.sec_voltage_desc { i32 2225000, i32 650000, i32 6250 }, align 4
@buck_voltage_val3 = internal constant %struct.sec_voltage_desc { i32 3000000, i32 750000, i32 12500 }, align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@s5m8767_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @s5m8767_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5m8767_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"LDO19\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"LDO20\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"LDO21\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"LDO22\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"LDO23\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"LDO24\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"LDO25\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"LDO26\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"LDO27\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"LDO28\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"BUCK5\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"BUCK6\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"BUCK7\00", align 1
@s5m8767_buck78_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.74 = private unnamed_addr constant [6 x i8] c"BUCK8\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"BUCK9\00", align 1
@s5m8767_opmode_reg = internal unnamed_addr constant [37 x [4 x i32]] [[4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1]], align 4
@.str.76 = private unnamed_addr constant [58 x i8] c"ext-control for %pOFn: mismatched op_mode (%x), ignoring\0A\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"ext-control for %pOFn: GPIO not valid, ignoring\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_s5m8767_pmic_driver_exit, ptr @__initcall__kmod_s5m8767__247_1007_s5m8767_pmic_driver_init6, ptr @s5m8767_pmic_driver_exit], section "llvm.metadata"
@switch.table.s5m8767_pmic_probe = private unnamed_addr constant [37 x i32] [i32 92, i32 93, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 50, i32 52, i32 61, i32 70, i32 79, i32 84, i32 86, i32 88, i32 90], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s5m8767_pmic_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5m8767_pmic_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @s5m8767_pmic_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5m8767_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m8767_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %667

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %213, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %15, ptr noundef nonnull @.str.14) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15) #8
  br label %667

22:                                               ; preds = %17
  %23 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef null) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ %28, %25 ], [ 0, %22 ]
  %27 = phi ptr [ %29, %25 ], [ %23, %22 ]
  %28 = add i32 %26, 1
  %29 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef nonnull %27) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25

31:                                               ; preds = %25, %22
  %32 = phi i32 [ 0, %22 ], [ %28, %25 ]
  %33 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 16) #7
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %40, label %36, !prof !8

36:                                               ; preds = %31
  %37 = extractvalue { i32, i1 } %34, 0
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %37, i32 noundef 3520) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %31
  tail call void @of_node_put(ptr noundef nonnull %18) #7
  br label %667

41:                                               ; preds = %36
  %42 = load i32, ptr %33, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 8) #7
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %49, label %45, !prof !8

45:                                               ; preds = %41
  %46 = extractvalue { i32, i1 } %43, 0
  %47 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %46, i32 noundef 3520) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  tail call void @of_node_put(ptr noundef nonnull %18) #7
  br label %667

50:                                               ; preds = %45
  store ptr %38, ptr %9, align 4
  %51 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 1
  store ptr %47, ptr %51, align 4
  %52 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef null) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %93, label %54

54:                                               ; preds = %88, %50
  %55 = phi ptr [ %90, %88 ], [ %47, %50 ]
  %56 = phi ptr [ %89, %88 ], [ %38, %50 ]
  %57 = phi ptr [ %91, %88 ], [ %52, %50 ]
  br label %58

58:                                               ; preds = %63, %54
  %59 = phi i32 [ 0, %54 ], [ %64, %63 ]
  %60 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %57, ptr noundef %61) #7
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = add nuw nsw i32 %59, 1
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %58

66:                                               ; preds = %63
  %67 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.16, ptr noundef nonnull %57) #8
  br label %88

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.device_node, ptr %57, i32 0, i32 3
  %70 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef %69, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.18) #7
  %71 = getelementptr inbounds %struct.sec_regulator_data, ptr %56, i32 0, i32 3
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %70, inttoptr (i32 -2 to ptr)
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store ptr null, ptr %71, align 4
  br label %76

74:                                               ; preds = %68
  %75 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %209, label %76

76:                                               ; preds = %74, %73
  store i32 %59, ptr %56, align 4
  %77 = tail call ptr @of_get_regulator_init_data(ptr noundef %3, ptr noundef nonnull %57, ptr noundef %60) #7
  %78 = getelementptr inbounds %struct.sec_regulator_data, ptr %56, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.sec_regulator_data, ptr %56, i32 0, i32 2
  store ptr %57, ptr %79, align 4
  %80 = getelementptr %struct.sec_regulator_data, ptr %56, i32 1
  store i32 %59, ptr %55, align 4
  %81 = getelementptr inbounds %struct.sec_opmode_data, ptr %55, i32 0, i32 1
  %82 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %57, ptr noundef nonnull @.str.19, ptr noundef %81, i32 noundef 1, i32 noundef 0) #7
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.20, ptr noundef nonnull %57) #8
  store i32 1, ptr %81, align 4
  br label %86

86:                                               ; preds = %84, %76
  %87 = getelementptr %struct.sec_opmode_data, ptr %55, i32 1
  br label %88

88:                                               ; preds = %86, %66
  %89 = phi ptr [ %56, %66 ], [ %80, %86 ]
  %90 = phi ptr [ %55, %66 ], [ %87, %86 ]
  %91 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef nonnull %57) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %54

93:                                               ; preds = %88, %50
  tail call void @of_node_put(ptr noundef nonnull %18) #7
  %94 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 6
  store i8 1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 5
  %99 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.22, ptr noundef %98, i32 noundef 8, i32 noundef 0) #7
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.23) #8
  br label %667

103:                                              ; preds = %96, %93
  %104 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 8
  store i8 1, ptr %107, align 4
  %108 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 7
  %109 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.25, ptr noundef %108, i32 noundef 8, i32 noundef 0) #7
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.26) #8
  br label %667

113:                                              ; preds = %106, %103
  %114 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.27, ptr noundef null) #7
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 10
  store i8 1, ptr %117, align 4
  %118 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 9
  %119 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.28, ptr noundef %118, i32 noundef 8, i32 noundef 0) #7
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.29) #8
  br label %667

123:                                              ; preds = %116, %113
  %124 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 6
  %125 = load i8, ptr %124, align 4, !range !9
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 8
  %129 = load i8, ptr %128, align 4, !range !9
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 10
  %133 = load i8, ptr %132, align 4, !range !9
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %161, label %135

135:                                              ; preds = %131, %127, %123
  %136 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null) #7
  %137 = icmp ult i32 %136, 2048
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 3, i32 0
  store i32 %136, ptr %139, align 4
  %140 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef null) #7
  %141 = icmp ult i32 %140, 2048
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 3, i32 1
  store i32 %140, ptr %143, align 4
  %144 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.36, i32 noundef 2, ptr noundef null) #7
  %145 = icmp ult i32 %144, 2048
  br i1 %145, label %150, label %146

146:                                              ; preds = %142, %138, %135
  %147 = phi i32 [ 0, %135 ], [ 1, %138 ], [ 2, %142 ]
  %148 = phi i32 [ %136, %135 ], [ %140, %138 ], [ %144, %142 ]
  %149 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.37, i32 noundef %147, i32 noundef %148) #8
  br label %667

150:                                              ; preds = %142
  %151 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 3, i32 2
  store i32 %144, ptr %151, align 4
  %152 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 11
  %153 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.30, ptr noundef %152, i32 noundef 1, i32 noundef 0) #7
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  store i32 0, ptr %152, align 4
  br label %161

156:                                              ; preds = %150
  %157 = load i32, ptr %152, align 4
  %158 = icmp sgt i32 %157, 7
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  store i32 0, ptr %152, align 4
  %160 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %160, ptr noundef nonnull @.str.31) #8
  br label %161

161:                                              ; preds = %159, %156, %155, %131
  %162 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef null) #7
  %163 = icmp ult i32 %162, 2048
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 4, i32 0
  store i32 %162, ptr %165, align 4
  %166 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef null) #7
  %167 = icmp ult i32 %166, 2048
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 4, i32 1
  store i32 %166, ptr %169, align 4
  %170 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef null) #7
  %171 = icmp ult i32 %170, 2048
  br i1 %171, label %176, label %172

172:                                              ; preds = %168, %164, %161
  %173 = phi i32 [ 0, %161 ], [ 1, %164 ], [ 2, %168 ]
  %174 = phi i32 [ %162, %161 ], [ %166, %164 ], [ %170, %168 ]
  %175 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.37, i32 noundef %173, i32 noundef %174) #8
  br label %667

176:                                              ; preds = %168
  %177 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 4, i32 2
  store i32 %170, ptr %177, align 4
  %178 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.32, ptr noundef null) #7
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 13
  store i8 1, ptr %181, align 4
  br label %182

182:                                              ; preds = %180, %176
  %183 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.33, ptr noundef null) #7
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 14
  store i8 1, ptr %186, align 1
  br label %187

187:                                              ; preds = %185, %182
  %188 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.34, ptr noundef null) #7
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 15
  store i8 1, ptr %191, align 2
  br label %192

192:                                              ; preds = %190, %187
  %193 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 13
  %194 = load i8, ptr %193, align 4, !range !9
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 14
  %198 = load i8, ptr %197, align 1, !range !9
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 15
  %202 = load i8, ptr %201, align 2, !range !9
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %200, %196, %192
  %205 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 12
  %206 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.35, ptr noundef %205, i32 noundef 1, i32 noundef 0) #7
  %207 = icmp sgt i32 %206, -1
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  store i32 0, ptr %205, align 4
  br label %213

209:                                              ; preds = %74
  tail call void @of_node_put(ptr noundef nonnull %57) #7
  tail call void @of_node_put(ptr noundef nonnull %18) #7
  %210 = load ptr, ptr %71, align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = icmp eq ptr %210, null
  br i1 %212, label %213, label %667

213:                                              ; preds = %209, %208, %204, %200, %12
  %214 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 6
  %215 = load i8, ptr %214, align 4, !range !9
  %216 = icmp eq i8 %215, 0
  %217 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 8
  %218 = load i8, ptr %217, align 4, !range !9
  %219 = icmp eq i8 %218, 0
  br i1 %216, label %226, label %220

220:                                              ; preds = %213
  br i1 %219, label %221, label %225

221:                                              ; preds = %220
  %222 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 10
  %223 = load i8, ptr %222, align 4, !range !9
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %221, %220
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %667

226:                                              ; preds = %213
  br i1 %219, label %232, label %227

227:                                              ; preds = %226
  %228 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 10
  %229 = load i8, ptr %228, align 4, !range !9
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %667

232:                                              ; preds = %227, %226
  %233 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 10
  br label %234

234:                                              ; preds = %232, %221
  %235 = phi ptr [ %233, %232 ], [ %222, %221 ]
  %236 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 80, i32 noundef 3520) #7
  %237 = icmp eq ptr %236, null
  br i1 %237, label %667, label %238

238:                                              ; preds = %234
  store ptr %3, ptr %236, align 4
  %239 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 1
  store ptr %7, ptr %239, align 4
  %240 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 2
  store i32 %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %236, ptr %243, align 8
  %244 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 11
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 16
  store i32 %245, ptr %246, align 4
  %247 = load i8, ptr %214, align 4, !range !9
  %248 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 8
  store i8 %247, ptr %248, align 1
  %249 = load i8, ptr %217, align 4, !range !9
  %250 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 9
  store i8 %249, ptr %250, align 4
  %251 = load i8, ptr %235, align 4, !range !9
  %252 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 10
  store i8 %251, ptr %252, align 1
  %253 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 3
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 14
  store i32 %254, ptr %255, align 4
  %256 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 3, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 14, i32 1
  store i32 %257, ptr %258, align 4
  %259 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 3, i32 2
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 14, i32 2
  store i32 %260, ptr %261, align 4
  %262 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 4
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 15
  store i32 %263, ptr %264, align 4
  %265 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 4, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 15, i32 1
  store i32 %266, ptr %267, align 4
  %268 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 4, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 15, i32 2
  store i32 %269, ptr %270, align 4
  %271 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 12
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 4
  store i32 %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 13
  %275 = load i8, ptr %274, align 4, !range !9
  %276 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 5
  store i8 %275, ptr %276, align 4
  %277 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 14
  %278 = load i8, ptr %277, align 1, !range !9
  %279 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 6
  store i8 %278, ptr %279, align 1
  %280 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 15
  %281 = load i8, ptr %280, align 2, !range !9
  %282 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 7
  store i8 %281, ptr %282, align 2
  %283 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.s5m8767_info, ptr %236, i32 0, i32 3
  store ptr %284, ptr %285, align 4
  %286 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 16
  %287 = load i32, ptr %286, align 4
  %288 = icmp sgt i32 %287, 1600000
  %289 = tail call i32 @llvm.smax.i32(i32 %287, i32 600000) #7
  %290 = add nsw i32 %289, -593751
  %291 = udiv i32 %290, 6250
  %292 = select i1 %288, i32 -22, i32 %291
  %293 = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = tail call i32 @regmap_write(ptr noundef %294, i32 noundef 54, i32 noundef %292) #7
  %296 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 17
  %297 = load i32, ptr %296, align 4
  %298 = icmp sgt i32 %297, 1600000
  %299 = tail call i32 @llvm.smax.i32(i32 %297, i32 600000) #7
  %300 = add nsw i32 %299, -593751
  %301 = udiv i32 %300, 6250
  %302 = select i1 %298, i32 -22, i32 %301
  %303 = load ptr, ptr %239, align 4
  %304 = getelementptr inbounds %struct.sec_pmic_dev, ptr %303, i32 0, i32 2
  %305 = load ptr, ptr %304, align 4
  %306 = tail call i32 @regmap_write(ptr noundef %305, i32 noundef 63, i32 noundef %302) #7
  %307 = getelementptr inbounds %struct.sec_platform_data, ptr %9, i32 0, i32 18
  %308 = load i32, ptr %307, align 4
  %309 = icmp sgt i32 %308, 1600000
  %310 = tail call i32 @llvm.smax.i32(i32 %308, i32 600000) #7
  %311 = add nsw i32 %310, -593751
  %312 = udiv i32 %311, 6250
  %313 = select i1 %309, i32 -22, i32 %312
  %314 = load ptr, ptr %239, align 4
  %315 = getelementptr inbounds %struct.sec_pmic_dev, ptr %314, i32 0, i32 2
  %316 = load ptr, ptr %315, align 4
  %317 = tail call i32 @regmap_write(ptr noundef %316, i32 noundef 72, i32 noundef %313) #7
  %318 = load i8, ptr %248, align 1, !range !9
  %319 = icmp eq i8 %318, 0
  br label %320

320:                                              ; preds = %358, %238
  %321 = phi i32 [ 0, %238 ], [ %359, %358 ]
  br i1 %319, label %332, label %322

322:                                              ; preds = %320
  %323 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 5, i32 %321
  %324 = load i32, ptr %323, align 4
  %325 = icmp sgt i32 %324, 1600000
  %326 = tail call i32 @llvm.smax.i32(i32 %324, i32 600000) #7
  %327 = add nsw i32 %326, -593751
  %328 = udiv i32 %327, 6250
  %329 = trunc i32 %328 to i8
  %330 = select i1 %325, i8 -22, i8 %329
  %331 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 11, i32 %321
  store i8 %330, ptr %331, align 1
  br label %332

332:                                              ; preds = %322, %320
  %333 = load i8, ptr %250, align 4, !range !9
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %345, label %335

335:                                              ; preds = %332
  %336 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 7, i32 %321
  %337 = load i32, ptr %336, align 4
  %338 = icmp sgt i32 %337, 1600000
  %339 = tail call i32 @llvm.smax.i32(i32 %337, i32 600000) #7
  %340 = add nsw i32 %339, -593751
  %341 = udiv i32 %340, 6250
  %342 = trunc i32 %341 to i8
  %343 = select i1 %338, i8 -22, i8 %342
  %344 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 12, i32 %321
  store i8 %343, ptr %344, align 1
  br label %345

345:                                              ; preds = %335, %332
  %346 = load i8, ptr %252, align 1, !range !9
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %345
  %349 = getelementptr %struct.sec_platform_data, ptr %9, i32 0, i32 9, i32 %321
  %350 = load i32, ptr %349, align 4
  %351 = icmp sgt i32 %350, 1600000
  %352 = tail call i32 @llvm.smax.i32(i32 %350, i32 600000) #7
  %353 = add nsw i32 %352, -593751
  %354 = udiv i32 %353, 6250
  %355 = trunc i32 %354 to i8
  %356 = select i1 %351, i8 -22, i8 %355
  %357 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 13, i32 %321
  store i8 %356, ptr %357, align 1
  br label %358

358:                                              ; preds = %348, %345
  %359 = add nuw nsw i32 %321, 1
  %360 = icmp eq i32 %359, 8
  br i1 %360, label %361, label %320

361:                                              ; preds = %358
  %362 = load i8, ptr %214, align 4, !range !9
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load i8, ptr %217, align 4, !range !9
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i8, ptr %235, align 4, !range !9
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %409, label %370

370:                                              ; preds = %367, %364, %361
  %371 = load i32, ptr %253, align 4
  %372 = icmp ult i32 %371, 2048
  br i1 %372, label %373, label %379

373:                                              ; preds = %370
  %374 = load i32, ptr %256, align 4
  %375 = icmp ult i32 %374, 2048
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i32, ptr %259, align 4
  %378 = icmp ult i32 %377, 2048
  br i1 %378, label %380, label %379

379:                                              ; preds = %376, %373, %370
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  br label %667

380:                                              ; preds = %376
  %381 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %371, ptr noundef nonnull @.str.4) #7
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %667

383:                                              ; preds = %380
  %384 = load i32, ptr %256, align 4
  %385 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %384, ptr noundef nonnull @.str.5) #7
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %667

387:                                              ; preds = %383
  %388 = load i32, ptr %259, align 4
  %389 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %388, ptr noundef nonnull @.str.6) #7
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %667

391:                                              ; preds = %387
  %392 = load i32, ptr %253, align 4
  %393 = load i32, ptr %246, align 4
  %394 = lshr i32 %393, 2
  %395 = and i32 %394, 1
  %396 = tail call ptr @gpio_to_desc(i32 noundef %392) #7
  %397 = tail call i32 @gpiod_direction_output_raw(ptr noundef %396, i32 noundef %395) #7
  %398 = load i32, ptr %256, align 4
  %399 = load i32, ptr %246, align 4
  %400 = lshr i32 %399, 1
  %401 = and i32 %400, 1
  %402 = tail call ptr @gpio_to_desc(i32 noundef %398) #7
  %403 = tail call i32 @gpiod_direction_output_raw(ptr noundef %402, i32 noundef %401) #7
  %404 = load i32, ptr %259, align 4
  %405 = load i32, ptr %246, align 4
  %406 = and i32 %405, 1
  %407 = tail call ptr @gpio_to_desc(i32 noundef %404) #7
  %408 = tail call i32 @gpiod_direction_output_raw(ptr noundef %407, i32 noundef %406) #7
  br label %409

409:                                              ; preds = %391, %367
  %410 = load i32, ptr %262, align 4
  %411 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %410, ptr noundef nonnull @.str.7) #7
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %667

413:                                              ; preds = %409
  %414 = load i32, ptr %265, align 4
  %415 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %414, ptr noundef nonnull @.str.8) #7
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %667

417:                                              ; preds = %413
  %418 = load i32, ptr %268, align 4
  %419 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %418, ptr noundef nonnull @.str.9) #7
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %667

421:                                              ; preds = %417
  %422 = load i32, ptr %262, align 4
  %423 = tail call ptr @gpio_to_desc(i32 noundef %422) #7
  %424 = tail call i32 @gpiod_direction_output_raw(ptr noundef %423, i32 noundef 0) #7
  %425 = load i32, ptr %265, align 4
  %426 = tail call ptr @gpio_to_desc(i32 noundef %425) #7
  %427 = tail call i32 @gpiod_direction_output_raw(ptr noundef %426, i32 noundef 0) #7
  %428 = load i32, ptr %268, align 4
  %429 = tail call ptr @gpio_to_desc(i32 noundef %428) #7
  %430 = tail call i32 @gpiod_direction_output_raw(ptr noundef %429, i32 noundef 0) #7
  %431 = load ptr, ptr %239, align 4
  %432 = getelementptr inbounds %struct.sec_pmic_dev, ptr %431, i32 0, i32 2
  %433 = load ptr, ptr %432, align 4
  %434 = load i8, ptr %214, align 4, !range !9
  %435 = icmp eq i8 %434, 0
  %436 = select i1 %435, i32 0, i32 2
  %437 = tail call i32 @regmap_update_bits_base(ptr noundef %433, i32 noundef 52, i32 noundef 2, i32 noundef %436, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %438 = load ptr, ptr %239, align 4
  %439 = getelementptr inbounds %struct.sec_pmic_dev, ptr %438, i32 0, i32 2
  %440 = load ptr, ptr %439, align 4
  %441 = load i8, ptr %217, align 4, !range !9
  %442 = icmp eq i8 %441, 0
  %443 = select i1 %442, i32 0, i32 2
  %444 = tail call i32 @regmap_update_bits_base(ptr noundef %440, i32 noundef 61, i32 noundef 2, i32 noundef %443, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %445 = load ptr, ptr %239, align 4
  %446 = getelementptr inbounds %struct.sec_pmic_dev, ptr %445, i32 0, i32 2
  %447 = load ptr, ptr %446, align 4
  %448 = load i8, ptr %235, align 4, !range !9
  %449 = icmp eq i8 %448, 0
  %450 = select i1 %449, i32 0, i32 2
  %451 = tail call i32 @regmap_update_bits_base(ptr noundef %447, i32 noundef 70, i32 noundef 2, i32 noundef %450, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %452

452:                                              ; preds = %489, %421
  %453 = phi i32 [ 0, %421 ], [ %490, %489 ]
  %454 = load i8, ptr %248, align 1, !range !9
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %465, label %456

456:                                              ; preds = %452
  %457 = load ptr, ptr %239, align 4
  %458 = getelementptr inbounds %struct.sec_pmic_dev, ptr %457, i32 0, i32 2
  %459 = load ptr, ptr %458, align 4
  %460 = add nuw nsw i32 %453, 53
  %461 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 11, i32 %453
  %462 = load i8, ptr %461, align 1
  %463 = zext i8 %462 to i32
  %464 = tail call i32 @regmap_write(ptr noundef %459, i32 noundef %460, i32 noundef %463) #7
  br label %465

465:                                              ; preds = %456, %452
  %466 = load i8, ptr %250, align 4, !range !9
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %477, label %468

468:                                              ; preds = %465
  %469 = load ptr, ptr %239, align 4
  %470 = getelementptr inbounds %struct.sec_pmic_dev, ptr %469, i32 0, i32 2
  %471 = load ptr, ptr %470, align 4
  %472 = add nuw nsw i32 %453, 62
  %473 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 12, i32 %453
  %474 = load i8, ptr %473, align 1
  %475 = zext i8 %474 to i32
  %476 = tail call i32 @regmap_write(ptr noundef %471, i32 noundef %472, i32 noundef %475) #7
  br label %477

477:                                              ; preds = %468, %465
  %478 = load i8, ptr %252, align 1, !range !9
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %489, label %480

480:                                              ; preds = %477
  %481 = load ptr, ptr %239, align 4
  %482 = getelementptr inbounds %struct.sec_pmic_dev, ptr %481, i32 0, i32 2
  %483 = load ptr, ptr %482, align 4
  %484 = add nuw nsw i32 %453, 71
  %485 = getelementptr %struct.s5m8767_info, ptr %236, i32 0, i32 13, i32 %453
  %486 = load i8, ptr %485, align 1
  %487 = zext i8 %486 to i32
  %488 = tail call i32 @regmap_write(ptr noundef %483, i32 noundef %484, i32 noundef %487) #7
  br label %489

489:                                              ; preds = %480, %477
  %490 = add nuw nsw i32 %453, 1
  %491 = icmp eq i32 %490, 8
  br i1 %491, label %492, label %452

492:                                              ; preds = %489
  %493 = load i8, ptr %276, align 4, !range !9
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %500, label %495

495:                                              ; preds = %492
  %496 = load ptr, ptr %239, align 4
  %497 = getelementptr inbounds %struct.sec_pmic_dev, ptr %496, i32 0, i32 2
  %498 = load ptr, ptr %497, align 4
  %499 = tail call i32 @regmap_update_bits_base(ptr noundef %498, i32 noundef 15, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %500

500:                                              ; preds = %495, %492
  %501 = load i8, ptr %279, align 1, !range !9
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %500
  %504 = load ptr, ptr %239, align 4
  %505 = getelementptr inbounds %struct.sec_pmic_dev, ptr %504, i32 0, i32 2
  %506 = load ptr, ptr %505, align 4
  %507 = tail call i32 @regmap_update_bits_base(ptr noundef %506, i32 noundef 15, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %508

508:                                              ; preds = %503, %500
  %509 = load i8, ptr %282, align 2, !range !9
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %508
  %512 = load ptr, ptr %239, align 4
  %513 = getelementptr inbounds %struct.sec_pmic_dev, ptr %512, i32 0, i32 2
  %514 = load ptr, ptr %513, align 4
  %515 = tail call i32 @regmap_update_bits_base(ptr noundef %514, i32 noundef 15, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %516

516:                                              ; preds = %511, %508
  %517 = load i8, ptr %276, align 4, !range !9
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %519, label %525

519:                                              ; preds = %516
  %520 = load i8, ptr %279, align 1, !range !9
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %519
  %523 = load i8, ptr %282, align 2, !range !9
  %524 = icmp eq i8 %523, 0
  br i1 %524, label %538, label %525

525:                                              ; preds = %522, %519, %516
  %526 = load i32, ptr %273, align 4
  switch i32 %526, label %531 [
    i32 5, label %532
    i32 10, label %527
    i32 25, label %528
    i32 50, label %529
    i32 100, label %530
  ]

527:                                              ; preds = %525
  br label %532

528:                                              ; preds = %525
  br label %532

529:                                              ; preds = %525
  br label %532

530:                                              ; preds = %525
  br label %532

531:                                              ; preds = %525
  br label %532

532:                                              ; preds = %531, %530, %529, %528, %527, %525
  %533 = phi i32 [ 144, %531 ], [ 240, %530 ], [ 224, %529 ], [ 208, %528 ], [ 144, %527 ], [ 64, %525 ]
  %534 = load ptr, ptr %239, align 4
  %535 = getelementptr inbounds %struct.sec_pmic_dev, ptr %534, i32 0, i32 2
  %536 = load ptr, ptr %535, align 4
  %537 = tail call i32 @regmap_update_bits_base(ptr noundef %536, i32 noundef 15, i32 noundef 240, i32 noundef %533, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %538

538:                                              ; preds = %532, %522
  %539 = load i32, ptr %240, align 4
  %540 = icmp sgt i32 %539, 0
  br i1 %540, label %541, label %667

541:                                              ; preds = %538
  %542 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %543 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %544 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %545 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %546 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 5
  br label %547

547:                                              ; preds = %663, %541
  %548 = phi i32 [ 0, %541 ], [ %664, %663 ]
  %549 = load ptr, ptr %9, align 4
  %550 = getelementptr %struct.sec_regulator_data, ptr %549, i32 %548
  %551 = load i32, ptr %550, align 4
  %552 = getelementptr [37 x ptr], ptr @reg_voltage_map, i32 0, i32 %551
  %553 = load ptr, ptr %552, align 4
  %554 = load i32, ptr %553, align 4
  %555 = getelementptr inbounds %struct.sec_voltage_desc, ptr %553, i32 0, i32 1
  %556 = load i32, ptr %555, align 4
  %557 = sub i32 %554, %556
  %558 = getelementptr inbounds %struct.sec_voltage_desc, ptr %553, i32 0, i32 2
  %559 = load i32, ptr %558, align 4
  %560 = sdiv i32 %557, %559
  %561 = add i32 %560, 1
  %562 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 8
  store i32 %561, ptr %562, align 4
  %563 = load i32, ptr %555, align 4
  %564 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 14
  store i32 %563, ptr %564, align 4
  %565 = load i32, ptr %558, align 4
  %566 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 15
  store i32 %565, ptr %566, align 4
  switch i32 %551, label %595 [
    i32 0, label %567
    i32 1, label %567
    i32 2, label %569
    i32 3, label %569
    i32 4, label %569
    i32 5, label %569
    i32 6, label %569
    i32 7, label %569
    i32 8, label %569
    i32 9, label %569
    i32 10, label %569
    i32 11, label %569
    i32 12, label %569
    i32 13, label %569
    i32 14, label %569
    i32 15, label %569
    i32 16, label %569
    i32 17, label %569
    i32 18, label %569
    i32 19, label %569
    i32 20, label %569
    i32 21, label %569
    i32 22, label %569
    i32 23, label %569
    i32 24, label %569
    i32 25, label %569
    i32 26, label %569
    i32 27, label %569
    i32 28, label %593
    i32 29, label %571
    i32 30, label %577
    i32 31, label %583
    i32 32, label %589
    i32 33, label %590
    i32 34, label %590
    i32 35, label %590
    i32 36, label %590
  ]

567:                                              ; preds = %547, %547
  %568 = add nuw nsw i32 %551, 92
  br label %593

569:                                              ; preds = %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547, %547
  %570 = add nuw nsw i32 %551, 95
  br label %593

571:                                              ; preds = %547
  %572 = load i8, ptr %248, align 1, !range !9
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %593, label %574

574:                                              ; preds = %571
  %575 = load i32, ptr %246, align 4
  %576 = add i32 %575, 53
  br label %593

577:                                              ; preds = %547
  %578 = load i8, ptr %250, align 4, !range !9
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %593, label %580

580:                                              ; preds = %577
  %581 = load i32, ptr %246, align 4
  %582 = add i32 %581, 62
  br label %593

583:                                              ; preds = %547
  %584 = load i8, ptr %252, align 1, !range !9
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %593, label %586

586:                                              ; preds = %583
  %587 = load i32, ptr %246, align 4
  %588 = add i32 %587, 71
  br label %593

589:                                              ; preds = %547
  br label %593

590:                                              ; preds = %547, %547, %547, %547
  %591 = shl nuw nsw i32 %551, 1
  %592 = add nuw nsw i32 %591, 19
  br label %593

593:                                              ; preds = %590, %589, %586, %583, %580, %577, %574, %571, %569, %567, %547
  %594 = phi i32 [ %592, %590 ], [ 80, %589 ], [ %588, %586 ], [ 71, %583 ], [ %582, %580 ], [ 62, %577 ], [ %576, %574 ], [ 53, %571 ], [ %570, %569 ], [ %568, %567 ], [ 51, %547 ]
  br label %595

595:                                              ; preds = %593, %547
  %596 = phi i32 [ %594, %593 ], [ -22, %547 ]
  %597 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 27
  store i32 %596, ptr %597, align 4
  %598 = icmp slt i32 %551, 28
  %599 = select i1 %598, i32 63, i32 255
  %600 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 28
  store i32 %599, ptr %600, align 4
  %601 = icmp ult i32 %551, 37
  br i1 %601, label %602, label %617

602:                                              ; preds = %595
  %603 = getelementptr inbounds [37 x i32], ptr @switch.table.s5m8767_pmic_probe, i32 0, i32 %551
  %604 = load i32, ptr %603, align 4
  %605 = load i32, ptr %242, align 4
  %606 = icmp sgt i32 %605, 0
  br i1 %606, label %607, label %617

607:                                              ; preds = %602
  %608 = load ptr, ptr %285, align 4
  br label %609

609:                                              ; preds = %614, %607
  %610 = phi i32 [ 0, %607 ], [ %615, %614 ]
  %611 = getelementptr %struct.sec_opmode_data, ptr %608, i32 %610
  %612 = load i32, ptr %611, align 4
  %613 = icmp eq i32 %612, %551
  br i1 %613, label %619, label %614

614:                                              ; preds = %609
  %615 = add nuw nsw i32 %610, 1
  %616 = icmp eq i32 %615, %605
  br i1 %616, label %617, label %609

617:                                              ; preds = %614, %602, %595
  %618 = load ptr, ptr %236, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %618, ptr noundef nonnull @.str.10) #8
  br label %667

619:                                              ; preds = %609
  %620 = getelementptr %struct.sec_opmode_data, ptr %608, i32 %610, i32 1
  %621 = load i32, ptr %620, align 4
  %622 = getelementptr [37 x [4 x i32]], ptr @s5m8767_opmode_reg, i32 0, i32 %551, i32 %621
  %623 = load i32, ptr %622, align 4
  %624 = shl i32 %623, 6
  %625 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 34
  store i32 %604, ptr %625, align 4
  %626 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 35
  store i32 192, ptr %626, align 4
  %627 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551, i32 36
  store i32 %624, ptr %627, align 4
  %628 = load ptr, ptr %236, align 4
  store ptr %628, ptr %2, align 4
  %629 = load ptr, ptr %9, align 4
  %630 = getelementptr %struct.sec_regulator_data, ptr %629, i32 %548, i32 1
  %631 = load ptr, ptr %630, align 4
  store ptr %631, ptr %542, align 4
  store ptr %236, ptr %543, align 4
  %632 = load ptr, ptr %293, align 4
  store ptr %632, ptr %544, align 4
  %633 = load ptr, ptr %9, align 4
  %634 = getelementptr %struct.sec_regulator_data, ptr %633, i32 %548, i32 2
  %635 = load ptr, ptr %634, align 4
  store ptr %635, ptr %545, align 4
  store ptr null, ptr %546, align 4
  %636 = load ptr, ptr %9, align 4
  %637 = getelementptr %struct.sec_regulator_data, ptr %636, i32 %548, i32 3
  %638 = load ptr, ptr %637, align 4
  %639 = icmp eq ptr %638, null
  br i1 %639, label %644, label %640

640:                                              ; preds = %619
  %641 = getelementptr %struct.sec_regulator_data, ptr %636, i32 %548
  call fastcc void @s5m8767_regulator_config_ext_control(ptr noundef nonnull %236, ptr noundef %641, ptr noundef nonnull %2)
  %642 = load ptr, ptr %236, align 4
  %643 = load ptr, ptr %546, align 4
  call void @devm_gpiod_unhinge(ptr noundef %642, ptr noundef %643) #7
  br label %644

644:                                              ; preds = %640, %619
  %645 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %551
  %646 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %645, ptr noundef nonnull %2) #7
  %647 = icmp ugt ptr %646, inttoptr (i32 -4096 to ptr)
  br i1 %647, label %648, label %651

648:                                              ; preds = %644
  %649 = ptrtoint ptr %646 to i32
  %650 = load ptr, ptr %236, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %650, ptr noundef nonnull @.str.11, i32 noundef %551) #8
  br label %667

651:                                              ; preds = %644
  %652 = load ptr, ptr %9, align 4
  %653 = getelementptr %struct.sec_regulator_data, ptr %652, i32 %548, i32 3
  %654 = load ptr, ptr %653, align 4
  %655 = icmp eq ptr %654, null
  br i1 %655, label %663, label %656

656:                                              ; preds = %651
  %657 = call fastcc i32 @s5m8767_enable_ext_control(ptr noundef nonnull %236, ptr noundef %646)
  %658 = icmp slt i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = load ptr, ptr %236, align 4
  %661 = load ptr, ptr %646, align 8
  %662 = load ptr, ptr %661, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %660, ptr noundef nonnull @.str.12, ptr noundef %662, i32 noundef %657) #8
  br label %667

663:                                              ; preds = %656, %651
  %664 = add nuw nsw i32 %548, 1
  %665 = load i32, ptr %240, align 4
  %666 = icmp slt i32 %664, %665
  br i1 %666, label %547, label %667

667:                                              ; preds = %663, %659, %648, %617, %538, %417, %413, %409, %387, %383, %380, %379, %234, %231, %225, %209, %172, %146, %121, %111, %101, %49, %40, %20, %11
  %668 = phi i32 [ -22, %225 ], [ -22, %231 ], [ -22, %379 ], [ -19, %11 ], [ %211, %209 ], [ -12, %234 ], [ %381, %380 ], [ %385, %383 ], [ %389, %387 ], [ %411, %409 ], [ %415, %413 ], [ %419, %417 ], [ -22, %172 ], [ -22, %146 ], [ -22, %20 ], [ -12, %40 ], [ -12, %49 ], [ -22, %121 ], [ -22, %111 ], [ -22, %101 ], [ %657, %659 ], [ %649, %648 ], [ -22, %617 ], [ 0, %538 ], [ 0, %663 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %668
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5m8767_regulator_config_ext_control(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 36
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.s5m8767_info, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.s5m8767_info, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %18, %10
  %14 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %15 = getelementptr %struct.sec_opmode_data, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 36
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %27, label %13

21:                                               ; preds = %13
  %22 = getelementptr %struct.sec_opmode_data, ptr %12, i32 %14, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [37 x [4 x i32]], ptr @s5m8767_opmode_reg, i32 0, i32 36, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %21, %18, %6
  %28 = phi i32 [ %25, %21 ], [ 0, %6 ], [ 0, %18 ]
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.sec_regulator_data, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.76, ptr noundef %31, i32 noundef %28) #8
  br label %42

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.sec_regulator_data, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.sec_regulator_data, ptr %1, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.77, ptr noundef %39) #8
  br label %42

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 5
  store ptr %34, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %36, %27, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5m8767_enable_ext_control(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @rdev_get_id(ptr noundef %1) #7
  %4 = icmp eq i32 %3, 36
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s5m8767_info, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.s5m8767_info, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.sec_opmode_data, ptr %11, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 36
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %26, label %12

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.s5m8767_info, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sec_pmic_dev, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 90, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %26

26:                                               ; preds = %20, %17, %5, %2
  %27 = phi i32 [ %25, %20 ], [ -22, %2 ], [ -22, %5 ], [ -22, %17 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m8767_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  switch i32 %4, label %73 [
    i32 0, label %71
    i32 1, label %71
    i32 2, label %71
    i32 3, label %71
    i32 4, label %71
    i32 5, label %71
    i32 6, label %71
    i32 7, label %71
    i32 8, label %71
    i32 9, label %71
    i32 10, label %71
    i32 11, label %71
    i32 12, label %71
    i32 13, label %71
    i32 14, label %71
    i32 15, label %71
    i32 16, label %71
    i32 17, label %71
    i32 18, label %71
    i32 19, label %71
    i32 20, label %71
    i32 21, label %71
    i32 22, label %71
    i32 23, label %71
    i32 24, label %71
    i32 25, label %71
    i32 26, label %71
    i32 27, label %71
    i32 36, label %71
    i32 33, label %71
    i32 32, label %71
    i32 29, label %5
    i32 30, label %11
    i32 31, label %17
    i32 28, label %71
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 11
  br label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 9
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %71, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 12
  br label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 10
  %19 = load i8, ptr %18, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 13
  br i1 %20, label %71, label %22

22:                                               ; preds = %17, %15, %9
  %23 = phi ptr [ %10, %9 ], [ %16, %15 ], [ %21, %17 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr %23, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %32, %29 ], [ %23, %25 ]
  %31 = phi i32 [ %33, %29 ], [ 0, %25 ]
  %32 = getelementptr i8, ptr %30, i32 1
  %33 = add i32 %31, 1
  %34 = load i8, ptr %32, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %25
  %38 = phi i32 [ 0, %25 ], [ %33, %29 ]
  %39 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 16
  %40 = load i32, ptr %39, align 4
  store i32 %38, ptr %39, align 4
  %41 = icmp sgt i32 %38, %40
  %42 = getelementptr inbounds %struct.s5m8767_info, ptr %3, i32 0, i32 14
  br i1 %41, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32, ptr %42, align 4
  %45 = lshr i32 %38, 2
  %46 = and i32 %45, 1
  %47 = tail call ptr @gpio_to_desc(i32 noundef %44) #7
  tail call void @gpiod_set_raw_value(ptr noundef %47, i32 noundef %46) #7
  %48 = getelementptr %struct.s5m8767_info, ptr %3, i32 0, i32 14, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %38, 1
  %51 = and i32 %50, 1
  %52 = tail call ptr @gpio_to_desc(i32 noundef %49) #7
  tail call void @gpiod_set_raw_value(ptr noundef %52, i32 noundef %51) #7
  %53 = getelementptr %struct.s5m8767_info, ptr %3, i32 0, i32 14, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %38, 1
  %56 = tail call ptr @gpio_to_desc(i32 noundef %54) #7
  tail call void @gpiod_set_raw_value(ptr noundef %56, i32 noundef %55) #7
  br label %73

57:                                               ; preds = %37
  %58 = getelementptr %struct.s5m8767_info, ptr %3, i32 0, i32 14, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %38, 1
  %61 = tail call ptr @gpio_to_desc(i32 noundef %59) #7
  tail call void @gpiod_set_raw_value(ptr noundef %61, i32 noundef %60) #7
  %62 = getelementptr %struct.s5m8767_info, ptr %3, i32 0, i32 14, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %38, 1
  %65 = and i32 %64, 1
  %66 = tail call ptr @gpio_to_desc(i32 noundef %63) #7
  tail call void @gpiod_set_raw_value(ptr noundef %66, i32 noundef %65) #7
  %67 = load i32, ptr %42, align 4
  %68 = lshr i32 %38, 2
  %69 = and i32 %68, 1
  %70 = tail call ptr @gpio_to_desc(i32 noundef %67) #7
  tail call void @gpiod_set_raw_value(ptr noundef %70, i32 noundef %69) #7
  br label %73

71:                                               ; preds = %22, %17, %11, %5, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %72 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef %1) #7
  br label %73

73:                                               ; preds = %71, %57, %43, %2
  %74 = phi i32 [ 0, %43 ], [ 0, %57 ], [ %72, %71 ], [ -22, %2 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m8767_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %5 = icmp ugt i32 %2, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.s5m8767_info, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %2, %1
  %15 = mul i32 %13, %14
  %16 = mul i32 %8, 1000
  %17 = add i32 %16, -1
  %18 = add i32 %17, %15
  %19 = udiv i32 %18, %16
  br label %20

20:                                               ; preds = %10, %6, %3
  %21 = phi i32 [ %19, %10 ], [ 0, %6 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
