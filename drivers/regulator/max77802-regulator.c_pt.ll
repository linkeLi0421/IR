; ModuleID = '/llk/IR/drivers/regulator/max77802-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77802-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.max77686_dev = type { ptr, ptr, i32, ptr, ptr, i32, %struct.mutex, [3 x i32], [3 x i32] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_max77802_regulator__247_548_max77802_pmic_driver_init6 = internal global ptr @max77802_pmic_driver_init, section ".initcall6.init", align 4
@max77802_pmic_driver = internal global %struct.platform_driver { ptr @max77802_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77802_pmic_id, i8 0 }, align 4
@__exitcall_max77802_pmic_driver_exit = internal global ptr @max77802_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [60 x i8] c"max77802_regulator.description=MAXIM 77802 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [57 x i8] c"max77802_regulator.author=Simon Glass <sjg@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"max77802_regulator.file=drivers/regulator/max77802-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [31 x i8] c"max77802_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"max77802-pmic\00", align 1
@max77802_pmic_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77802-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@regulators = internal constant [42 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.3, ptr @.str.4, ptr @.str.3, i8 0, ptr @.str.5, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @max77802_buck_16_dvs_ops, i32 0, i32 0, ptr null, i32 612500, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 17, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 240, ptr @max77802_buck16_ramp_table, i32 16, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.6, i8 0, ptr @.str.5, ptr null, i32 1, i8 0, i32 145, i32 0, ptr @max77802_buck_234_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 192, ptr @max77802_buck234_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.8, i8 0, ptr @.str.5, ptr null, i32 2, i8 0, i32 145, i32 0, ptr @max77802_buck_234_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, ptr @max77802_buck234_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.10, ptr @.str.11, ptr @.str.10, i8 0, ptr @.str.5, ptr null, i32 3, i8 0, i32 145, i32 0, ptr @max77802_buck_234_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, ptr @max77802_buck234_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.12, i8 0, ptr @.str.5, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.14, ptr @.str.15, ptr @.str.14, i8 0, ptr @.str.5, ptr null, i32 5, i8 0, i32 256, i32 0, ptr @max77802_buck_16_dvs_ops, i32 0, i32 0, ptr null, i32 612500, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 240, ptr @max77802_buck16_ramp_table, i32 16, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.16, ptr @.str.17, ptr @.str.16, i8 0, ptr @.str.5, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.18, i8 0, ptr @.str.5, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.20, i8 0, ptr @.str.5, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.22, ptr @.str.23, ptr @.str.22, i8 0, ptr @.str.5, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr @.str.24, i8 0, ptr @.str.5, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 96, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.26, ptr @.str.25, ptr @.str.26, i8 0, ptr @.str.5, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 97, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.5, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 98, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 98, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.5, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 99, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 99, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.31, ptr @.str.28, ptr @.str.31, i8 0, ptr @.str.5, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 100, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.32, ptr @.str.28, ptr @.str.32, i8 0, ptr @.str.5, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 101, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.33, ptr @.str.28, ptr @.str.33, i8 0, ptr @.str.5, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 102, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 102, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.34, i8 0, ptr @.str.5, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 103, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 103, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.36, ptr @.str.37, ptr @.str.36, i8 0, ptr @.str.5, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 104, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 104, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.38, ptr @.str.39, ptr @.str.38, i8 0, ptr @.str.5, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 105, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 105, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.40, ptr @.str.39, ptr @.str.40, i8 0, ptr @.str.5, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 106, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 106, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.5, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 107, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 107, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.43, ptr @.str.39, ptr @.str.43, i8 0, ptr @.str.5, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 108, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.44, ptr @.str.39, ptr @.str.44, i8 0, ptr @.str.5, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 109, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 109, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.45, ptr @.str.35, ptr @.str.45, i8 0, ptr @.str.5, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 110, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 110, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.46, ptr @.str.47, ptr @.str.46, i8 0, ptr @.str.5, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 112, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 112, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.48, ptr @.str.49, ptr @.str.48, i8 0, ptr @.str.5, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 113, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.50, ptr @.str.37, ptr @.str.50, i8 0, ptr @.str.5, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 114, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 114, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.51, ptr @.str.49, ptr @.str.51, i8 0, ptr @.str.5, ptr null, i32 28, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 115, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 115, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.52, ptr @.str.30, ptr @.str.52, i8 0, ptr @.str.5, ptr null, i32 29, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 116, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 116, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.53, ptr @.str.42, ptr @.str.53, i8 0, ptr @.str.5, ptr null, i32 30, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 118, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 118, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.54, ptr @.str.30, ptr @.str.54, i8 0, ptr @.str.5, ptr null, i32 31, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 119, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.55, ptr @.str.42, ptr @.str.55, i8 0, ptr @.str.5, ptr null, i32 32, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 120, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 120, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.56, ptr @.str.42, ptr @.str.56, i8 0, ptr @.str.5, ptr null, i32 33, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 121, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 121, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.57, ptr @.str.47, ptr @.str.57, i8 0, ptr @.str.5, ptr null, i32 34, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 122, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 122, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.58, ptr @.str.49, ptr @.str.58, i8 0, ptr @.str.5, ptr null, i32 35, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 123, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 123, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.59, ptr @.str.49, ptr @.str.59, i8 0, ptr @.str.5, ptr null, i32 36, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 124, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 124, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.60, ptr @.str.47, ptr @.str.60, i8 0, ptr @.str.5, ptr null, i32 37, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 125, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 125, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.61, ptr @.str.42, ptr @.str.61, i8 0, ptr @.str.5, ptr null, i32 38, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 127, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 127, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.62, ptr @.str.30, ptr @.str.62, i8 0, ptr @.str.5, ptr null, i32 39, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 128, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.63, ptr @.str.42, ptr @.str.63, i8 0, ptr @.str.5, ptr null, i32 40, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 129, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.64, ptr @.str.47, ptr @.str.64, i8 0, ptr @.str.5, ptr null, i32 41, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 130, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 130, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot read current mode for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"regulator init failed for %d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"inb1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@max77802_buck_16_dvs_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@max77802_buck16_ramp_table = internal constant [16 x i32] [i32 1000, i32 2000, i32 3030, i32 4000, i32 5000, i32 5880, i32 7140, i32 8330, i32 9090, i32 10000, i32 11110, i32 12500, i32 16670, i32 25000, i32 50000, i32 100000], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"inb2\00", align 1
@max77802_buck_234_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr @max77802_set_suspend_mode, ptr null, ptr null }, align 4
@max77802_buck234_ramp_table = internal constant [4 x i32] [i32 12500, i32 25000, i32 50000, i32 100000], align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"inb3\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"inb4\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"BUCK5\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"inb5\00", align 1
@max77802_buck_dvs_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"BUCK6\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"inb6\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"BUCK7\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"inb7\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"BUCK8\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"inb8\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"BUCK9\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"inb9\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"BUCK10\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"inb10\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"inl10\00", align 1
@max77802_ldo_ops_logic2 = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @max77802_set_mode, ptr @max77802_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_mode, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@max77802_ldo_ops_logic1 = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr @max77802_set_suspend_mode, ptr null, ptr null }, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"inl3\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"inl6\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"inl1\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"inl5\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"inl4\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"inl9\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"inl2\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"inl7\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"LDO19\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"LDO20\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"LDO21\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"LDO23\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"LDO24\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"LDO25\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"LDO26\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"LDO27\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"LDO28\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"LDO29\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"LDO30\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"LDO32\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"LDO33\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"LDO34\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"LDO35\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"%s: is disabled, mode: 0x%x not set\0A\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"%s: regulator mode: 0x%x not supported\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max77802_pmic_driver_exit, ptr @__initcall__kmod_max77802_regulator__247_548_max77802_pmic_driver_init6, ptr @max77802_pmic_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max77802_pmic_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77802_pmic_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max77802_pmic_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77802_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77802_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_config, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 20, i1 false)
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 168, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 4
  store ptr %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.max77686_dev, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 4
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 2
  store ptr %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %18, align 8
  br label %19

19:                                               ; preds = %60, %12
  %20 = phi i32 [ 0, %12 ], [ %61, %60 ]
  %21 = getelementptr [42 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %20
  %22 = getelementptr [42 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %20, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %20, 1073741822
  %25 = icmp ult i32 %24, 10
  br i1 %25, label %33, label %26

26:                                               ; preds = %33, %19
  %27 = add i32 %23, -1
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = add i32 %23, -10
  %31 = icmp ult i32 %30, 32
  %32 = select i1 %31, i32 6, i32 -22
  br label %38

33:                                               ; preds = %19
  %34 = trunc i32 %23 to i16
  %35 = lshr i16 1009, %34
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %26, label %38

38:                                               ; preds = %33, %29, %26
  %39 = phi i32 [ 4, %26 ], [ %32, %29 ], [ 0, %33 ]
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr [42 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %20, i32 34
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @regmap_read(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %2) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %20) #8
  store i32 3, ptr %2, align 4
  br label %51

46:                                               ; preds = %38
  %47 = load i32, ptr %2, align 4
  %48 = ashr i32 %47, %39
  %49 = and i32 %48, 3
  store i32 %49, ptr %2, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46, %45
  %52 = phi i32 [ 3, %45 ], [ %49, %46 ]
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %52, %51 ], [ 3, %46 ]
  %55 = getelementptr [42 x i32], ptr %10, i32 0, i32 %23
  store i32 %54, ptr %55, align 4
  %56 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %21, ptr noundef nonnull %3) #7
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = ptrtoint ptr %56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %20, i32 noundef %59) #8
  br label %63

60:                                               ; preds = %53
  %61 = add nuw nsw i32 %20, 1
  %62 = icmp eq i32 %61, 42
  br i1 %62, label %63, label %19

63:                                               ; preds = %60, %58, %1
  %64 = phi i32 [ -12, %1 ], [ %59, %58 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @max77802_map_mode(i32 noundef %0) #6 {
  %2 = icmp eq i32 %0, 3
  %3 = select i1 %2, i32 2, i32 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77802_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ult i32 %3, 10
  br i1 %4, label %12, label %5

5:                                                ; preds = %12, %1
  %6 = add i32 %3, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = add i32 %3, -10
  %10 = icmp ult i32 %9, 32
  %11 = select i1 %10, i32 6, i32 -22
  br label %17

12:                                               ; preds = %1
  %13 = trunc i32 %3 to i16
  %14 = lshr i16 1009, %13
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %5, label %17

17:                                               ; preds = %12, %8, %5
  %18 = phi i32 [ 4, %5 ], [ %11, %8 ], [ 0, %12 ]
  %19 = getelementptr [42 x i32], ptr %2, i32 0, i32 %3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 3, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ 3, %22 ], [ %20, %17 ]
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 34
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 35
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %24, %18
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %29, i32 noundef %31, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77802_set_suspend_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ult i32 %3, 10
  br i1 %4, label %12, label %5

5:                                                ; preds = %12, %1
  %6 = add i32 %3, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = add i32 %3, -10
  %10 = icmp ult i32 %9, 32
  %11 = select i1 %10, i32 6, i32 -22
  br label %17

12:                                               ; preds = %1
  %13 = trunc i32 %3 to i16
  %14 = lshr i16 1009, %13
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %5, label %17

17:                                               ; preds = %12, %8, %5
  %18 = phi i32 [ 4, %5 ], [ %11, %8 ], [ 0, %12 ]
  %19 = getelementptr [42 x i32], ptr %2, i32 0, i32 %3
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.regulator_desc, ptr %22, i32 0, i32 34
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.regulator_desc, ptr %22, i32 0, i32 35
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw nsw i32 1, %18
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %24, i32 noundef %26, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77802_set_suspend_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %13, label %6

6:                                                ; preds = %13, %2
  %7 = add i32 %4, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = add i32 %4, -10
  %11 = icmp ult i32 %10, 32
  %12 = select i1 %11, i32 6, i32 -22
  br label %18

13:                                               ; preds = %2
  %14 = trunc i32 %4 to i16
  %15 = lshr i16 1009, %14
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %6, label %18

18:                                               ; preds = %13, %9, %6
  %19 = phi i32 [ 4, %6 ], [ %12, %9 ], [ 0, %13 ]
  %20 = getelementptr [42 x i32], ptr %3, i32 0, i32 %4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %25 = load ptr, ptr %0, align 8
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.65, ptr noundef %26, i32 noundef %1) #8
  br label %44

27:                                               ; preds = %18
  switch i32 %1, label %40 [
    i32 8, label %28
    i32 2, label %44
  ]

28:                                               ; preds = %27
  %29 = icmp eq i32 %21, 3
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.regulator_desc, ptr %33, i32 0, i32 34
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.regulator_desc, ptr %33, i32 0, i32 35
  %37 = load i32, ptr %36, align 4
  %38 = shl nuw nsw i32 2, %19
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %35, i32 noundef %37, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %44

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %42 = load ptr, ptr %0, align 8
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.67, ptr noundef %43, i32 noundef %1) #8
  br label %44

44:                                               ; preds = %40, %30, %28, %27, %23
  %45 = phi i32 [ 0, %23 ], [ -22, %40 ], [ %39, %30 ], [ 0, %28 ], [ 0, %27 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77802_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %13, label %6

6:                                                ; preds = %13, %2
  %7 = add i32 %4, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = add i32 %4, -10
  %11 = icmp ult i32 %10, 32
  %12 = select i1 %11, i32 6, i32 -22
  br label %18

13:                                               ; preds = %2
  %14 = trunc i32 %4 to i16
  %15 = lshr i16 1009, %14
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %6, label %18

18:                                               ; preds = %13, %9, %6
  %19 = phi i32 [ 4, %6 ], [ %12, %9 ], [ 0, %13 ]
  switch i32 %1, label %21 [
    i32 8, label %25
    i32 2, label %20
  ]

20:                                               ; preds = %18
  br label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %23 = load ptr, ptr %0, align 8
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.67, ptr noundef %24, i32 noundef %1) #8
  br label %37

25:                                               ; preds = %20, %18
  %26 = phi i32 [ 3, %20 ], [ 1, %18 ]
  %27 = getelementptr [42 x i32], ptr %3, i32 0, i32 %4
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %30, i32 0, i32 34
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.regulator_desc, ptr %30, i32 0, i32 35
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw nsw i32 %26, %19
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %32, i32 noundef %34, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %37

37:                                               ; preds = %25, %21
  %38 = phi i32 [ -22, %21 ], [ %36, %25 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77802_get_mode(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = getelementptr [42 x i32], ptr %2, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  %7 = select i1 %6, i32 2, i32 8
  ret i32 %7
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
