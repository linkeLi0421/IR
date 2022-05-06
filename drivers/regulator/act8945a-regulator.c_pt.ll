; ModuleID = '/llk/IR/drivers/regulator/act8945a-regulator.c_pt.bc'
source_filename = "../drivers/regulator/act8945a-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.act8945a_pmic = type { ptr, [7 x i32] }

@__initcall__kmod_act8945a_regulator__247_356_act8945a_pmic_driver_init6 = internal global ptr @act8945a_pmic_driver_init, section ".initcall6.init", align 4
@act8945a_pmic_driver = internal global %struct.platform_driver { ptr @act8945a_pmic_probe, ptr null, ptr @act8945a_pmic_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @act8945a_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_act8945a_pmic_driver_exit = internal global ptr @act8945a_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [77 x i8] c"act8945a_regulator.description=Active-semi ACT8945A voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [62 x i8] c"act8945a_regulator.author=Wenyou Yang <wenyou.yang@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"act8945a_regulator.file=drivers/regulator/act8945a-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [31 x i8] c"act8945a_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"act8945a-regulator\00", align 1
@act8945a_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @act8945a_suspend, ptr null, ptr @act8945a_suspend, ptr null, ptr @act8945a_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"could not retrieve regmap from parent device\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"active-semi,vsel-high\00", align 1
@act8945a_alt_regulators = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, ptr @.str.7, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 33, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, ptr @.str.7, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, ptr @.str.7, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 0, ptr @.str.7, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.17, ptr @.str.15, ptr @.str.18, i8 0, ptr @.str.7, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.21, i8 0, ptr @.str.7, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.22, ptr @.str.20, ptr @.str.23, i8 0, ptr @.str.7, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }], align 4
@act8945a_regulators = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, ptr @.str.7, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, ptr @.str.7, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, ptr @.str.7, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 0, ptr @.str.7, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.17, ptr @.str.15, ptr @.str.18, i8 0, ptr @.str.7, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.21, i8 0, ptr @.str.7, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }, %struct.regulator_desc { ptr @.str.22, ptr @.str.20, ptr @.str.23, i8 0, ptr @.str.7, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8945a_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8945a_of_map_mode }], align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DCDC_REG1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vp1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"REG_DCDC1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@act8945a_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @act8945a_set_mode, ptr @act8945a_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @act8945a_set_suspend_enable, ptr @act8945a_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@act8945a_voltage_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 23, i32 25000 }, %struct.linear_range { i32 1200000, i32 24, i32 47, i32 50000 }, %struct.linear_range { i32 2400000, i32 48, i32 63, i32 100000 }], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"DCDC_REG2\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"vp2\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"REG_DCDC2\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"DCDC_REG3\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"vp3\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"REG_DCDC3\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"LDO_REG1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"inl45\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"REG_LDO1\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"LDO_REG2\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"REG_LDO2\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"LDO_REG3\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"inl67\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"REG_LDO3\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"LDO_REG4\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"REG_LDO4\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_act8945a_pmic_driver_exit, ptr @__initcall__kmod_act8945a_regulator__247_356_act8945a_pmic_driver_init6, ptr @act8945a_pmic_driver_exit], section "llvm.metadata"
@switch.table.act8945a_of_map_mode = private unnamed_addr constant [3 x i32] [i32 2, i32 2, i32 8], align 4
@switch.table.act8945a_set_mode = private unnamed_addr constant [7 x i32] [i32 34, i32 50, i32 66, i32 81, i32 85, i32 97, i32 101], align 4
@switch.table.act8945a_set_suspend_enable.24 = private unnamed_addr constant [7 x i32] [i32 184, i32 184, i32 184, i32 248, i32 248, i32 248, i32 248], align 4
@switch.table.act8945a_set_suspend_disable = private unnamed_addr constant [7 x i32] [i32 36, i32 52, i32 68, i32 82, i32 86, i32 98, i32 102], align 4
@switch.table.act8945a_set_suspend_disable.25 = private unnamed_addr constant [7 x i32] [i32 168, i32 168, i32 168, i32 232, i32 232, i32 232, i32 232], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @act8945a_pmic_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @act8945a_pmic_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @act8945a_pmic_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @act8945a_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 32, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @dev_get_regmap(ptr noundef %9, ptr noundef null) #7
  store ptr %10, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %60

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @act8945a_regulators, ptr @act8945a_alt_regulators
  store ptr %4, ptr %2, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %5, ptr %24, align 4
  %25 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef nonnull %19, ptr noundef nonnull %2) #7
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %55, label %27

27:                                               ; preds = %13
  %28 = select i1 %18, ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_regulators, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_alt_regulators, i32 0, i32 1)
  %29 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %28, ptr noundef nonnull %2) #7
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  %32 = select i1 %18, ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_regulators, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_alt_regulators, i32 0, i32 2)
  %33 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %32, ptr noundef nonnull %2) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = select i1 %18, ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_regulators, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_alt_regulators, i32 0, i32 3)
  %37 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %36, ptr noundef nonnull %2) #7
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = select i1 %18, ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_regulators, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_alt_regulators, i32 0, i32 4)
  %41 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %40, ptr noundef nonnull %2) #7
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = select i1 %18, ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_regulators, i32 0, i32 5), ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_alt_regulators, i32 0, i32 5)
  %45 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %44, ptr noundef nonnull %2) #7
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = select i1 %18, ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_regulators, i32 0, i32 6), ptr getelementptr inbounds ([7 x %struct.regulator_desc], ptr @act8945a_alt_regulators, i32 0, i32 6)
  %49 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %48, ptr noundef nonnull %2) #7
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %52, align 8
  %53 = load ptr, ptr %5, align 4
  %54 = call i32 @regmap_write(ptr noundef %53, i32 noundef 11, i32 noundef 239) #7
  br label %60

55:                                               ; preds = %47, %43, %39, %35, %31, %27, %13
  %56 = phi ptr [ %19, %13 ], [ %28, %27 ], [ %32, %31 ], [ %36, %35 ], [ %40, %39 ], [ %44, %43 ], [ %48, %47 ]
  %57 = phi ptr [ %25, %13 ], [ %29, %27 ], [ %33, %31 ], [ %37, %35 ], [ %41, %39 ], [ %45, %43 ], [ %49, %47 ]
  %58 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %58) #8
  %59 = ptrtoint ptr %57 to i32
  br label %60

60:                                               ; preds = %55, %51, %12, %1
  %61 = phi i32 [ %59, %55 ], [ %54, %51 ], [ -22, %12 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @act8945a_pmic_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @act8945a_of_map_mode(i32 noundef %0) #6 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [3 x i32], ptr @switch.table.act8945a_of_map_mode, i32 0, i32 %2
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
define internal i32 @act8945a_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds [7 x i32], ptr @switch.table.act8945a_set_mode, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  switch i32 %1, label %22 [
    i32 8, label %11
    i32 2, label %13
  ]

11:                                               ; preds = %8
  %12 = icmp ugt i32 %6, 2
  br label %15

13:                                               ; preds = %8
  %14 = icmp ult i32 %6, 3
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i1 [ %14, %13 ], [ %12, %11 ]
  %17 = select i1 %16, i32 32, i32 0
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %10, i32 noundef 32, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr %struct.act8945a_pmic, ptr %3, i32 0, i32 1, i32 %6
  store i32 %1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %15, %8, %2
  %23 = phi i32 [ 0, %20 ], [ -22, %2 ], [ -22, %8 ], [ %18, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_get_mode(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.act8945a_pmic, ptr %2, i32 0, i32 1, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_set_suspend_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = icmp ult i32 %4, 7
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds [7 x i32], ptr @switch.table.act8945a_set_suspend_disable, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [7 x i32], ptr @switch.table.act8945a_set_suspend_enable.24, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %8, i32 noundef %10) #7
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_set_suspend_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = icmp ult i32 %4, 7
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds [7 x i32], ptr @switch.table.act8945a_set_suspend_disable, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [7 x i32], ptr @switch.table.act8945a_set_suspend_disable.25, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %8, i32 noundef %10) #7
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1, i32 noundef 66) #7
  ret i32 %5
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
