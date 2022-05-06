; ModuleID = '/llk/IR/drivers/regulator/max77686-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77686-regulator.c"
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
%struct.max77686_data = type { ptr, [2 x i32], [35 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_max77686_regulator__247_533_max77686_pmic_driver_init6 = internal global ptr @max77686_pmic_driver_init, section ".initcall6.init", align 4
@max77686_pmic_driver = internal global %struct.platform_driver { ptr @max77686_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77686_pmic_id, i8 0 }, align 4
@__exitcall_max77686_pmic_driver_exit = internal global ptr @max77686_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [60 x i8] c"max77686_regulator.description=MAXIM 77686 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [65 x i8] c"max77686_regulator.author=Chiwoong Byun <woong.byun@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"max77686_regulator.file=drivers/regulator/max77686-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [31 x i8] c"max77686_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"max77686-pmic\00", align 1
@max77686_pmic_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77686-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@regulators = internal constant [35 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 2, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 3, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 4, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 8, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 12, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 16, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 17, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 18, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 19, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 20, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 21, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 22, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 23, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 24, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 25, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.3, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @max77686_buck1_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 17, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.3, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @max77686_buck_dvs_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 27500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 20, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 192, ptr @max77686_buck_dvs_ramp_table, i32 4, i32 22, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.3, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @max77686_buck_dvs_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 27500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 192, ptr @max77686_buck_dvs_ramp_table, i32 4, i32 22, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.3, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @max77686_buck_dvs_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 27500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, ptr @max77686_buck_dvs_ramp_table, i32 4, i32 22, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 30, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.34, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 31, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.35, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 32, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.36, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 33, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.37, i8 0, ptr @.str.3, ptr @max77686_of_parse_cb, i32 34, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"regulator init failed for %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"voltage-regulators\00", align 1
@max77686_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_mode, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@max77686_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_disable, ptr @max77686_ldo_set_suspend_mode, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"LDO19\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"LDO20\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"LDO21\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"LDO22\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"LDO23\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"LDO24\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"LDO25\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"LDO26\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@max77686_buck1_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@max77686_buck_dvs_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@max77686_buck_dvs_ramp_table = internal constant [4 x i32] [i32 13750, i32 27500, i32 55000, i32 100000], align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"BUCK5\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"BUCK6\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"BUCK7\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"BUCK8\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"BUCK9\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"\014%s: regulator_suspend_mode : 0x%x not supported\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"maxim,ena\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"max77686-regulator\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max77686_pmic_driver_exit, ptr @__initcall__kmod_max77686_regulator__247_533_max77686_pmic_driver_init6, ptr @max77686_pmic_driver_exit], section "llvm.metadata"
@switch.table.max77686_set_suspend_disable = private unnamed_addr constant [9 x i32] [i32 0, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max77686_pmic_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77686_pmic_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max77686_pmic_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77686_pmic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %8 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 20, i1 false)
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 152, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  store ptr %3, ptr %9, align 4
  %12 = load ptr, ptr %7, align 4
  store ptr %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.max77686_dev, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %9, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %17, align 8
  br label %18

18:                                               ; preds = %28, %11
  %19 = phi i32 [ 0, %11 ], [ %29, %28 ]
  %20 = getelementptr [35 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %19
  %21 = getelementptr [35 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %19, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.max77686_data, ptr %9, i32 0, i32 2, i32 %22
  store i32 3, ptr %23, align 4
  %24 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %20, ptr noundef nonnull %2) #6
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = ptrtoint ptr %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %27) #7
  br label %31

28:                                               ; preds = %18
  %29 = add nuw nsw i32 %19, 1
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %18

31:                                               ; preds = %28, %26, %1
  %32 = phi i32 [ -12, %1 ], [ %27, %26 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_of_parse_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %31 [
    i32 33, label %8
    i32 34, label %8
    i32 19, label %8
    i32 20, label %8
    i32 21, label %8
  ]

8:                                                ; preds = %3, %3, %3, %3, %3
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %11 = select i1 %9, ptr null, ptr %10
  %12 = tail call ptr @fwnode_gpiod_get_index(ptr noundef %11, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.40) #6
  %13 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %30, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %12, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %6, align 4
  %19 = getelementptr inbounds %struct.max77686_data, ptr %5, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %18, ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 34
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %13, align 4
  tail call void @gpiod_put(ptr noundef %29) #6
  br label %30

30:                                               ; preds = %28, %8
  store ptr null, ptr %13, align 4
  br label %31

31:                                               ; preds = %30, %17, %15, %3
  ret i32 0
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
define internal i32 @max77686_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = add i32 %3, -26
  %5 = icmp ult i32 %4, 9
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [9 x i32], ptr @switch.table.max77686_set_suspend_disable, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 6, %1 ]
  %11 = getelementptr %struct.max77686_data, ptr %2, i32 0, i32 2, i32 %3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  switch i32 %3, label %24 [
    i32 33, label %15
    i32 34, label %15
    i32 19, label %15
    i32 20, label %15
    i32 21, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14, %14
  %16 = getelementptr inbounds %struct.max77686_data, ptr %2, i32 0, i32 1
  %17 = lshr i32 %3, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %3, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %14
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ 3, %24 ], [ 0, %15 ]
  store i32 %26, ptr %11, align 4
  br label %27

27:                                               ; preds = %25, %9
  %28 = phi i32 [ %26, %25 ], [ %12, %9 ]
  %29 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds %struct.regulator_desc, ptr %31, i32 0, i32 34
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.regulator_desc, ptr %31, i32 0, i32 35
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %28, %10
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %33, i32 noundef %35, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_set_suspend_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %5 = icmp sgt i32 %4, 29
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  switch i32 %1, label %19 [
    i32 4, label %23
    i32 2, label %7
  ]

7:                                                ; preds = %6
  %8 = add i32 %4, -19
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.max77686_data, ptr %3, i32 0, i32 1
  %12 = lshr i32 %4, 5
  %13 = getelementptr i32, ptr %11, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = shl nuw nsw i32 1, %4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10, %7
  br label %23

19:                                               ; preds = %6
  %20 = load ptr, ptr %0, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %21, i32 noundef %1) #7
  br label %37

23:                                               ; preds = %18, %10, %6
  %24 = phi i32 [ 2, %6 ], [ 3, %18 ], [ 0, %10 ]
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 34
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 35
  %31 = load i32, ptr %30, align 4
  %32 = shl nuw nsw i32 %24, 6
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %29, i32 noundef %31, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = getelementptr %struct.max77686_data, ptr %3, i32 0, i32 2, i32 %4
  store i32 %24, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %23, %19, %2
  %38 = phi i32 [ -22, %19 ], [ 0, %35 ], [ 0, %2 ], [ %33, %23 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_set_suspend_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = add i32 %3, -26
  %5 = icmp ult i32 %4, 9
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [9 x i32], ptr @switch.table.max77686_set_suspend_disable, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 6, %1 ]
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 34
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 35
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw nsw i32 1, %10
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = getelementptr %struct.max77686_data, ptr %2, i32 0, i32 2, i32 %3
  store i32 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %9
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_ldo_set_suspend_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  switch i32 %1, label %17 [
    i32 8, label %21
    i32 4, label %5
    i32 2, label %6
  ]

5:                                                ; preds = %2
  br label %21

6:                                                ; preds = %2
  switch i32 %4, label %16 [
    i32 33, label %7
    i32 34, label %7
    i32 19, label %7
    i32 20, label %7
    i32 21, label %7
  ]

7:                                                ; preds = %6, %6, %6, %6, %6
  %8 = getelementptr inbounds %struct.max77686_data, ptr %3, i32 0, i32 1
  %9 = lshr i32 %4, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %4, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7, %6
  br label %21

17:                                               ; preds = %2
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %19, i32 noundef %1) #7
  br label %35

21:                                               ; preds = %16, %7, %5, %2
  %22 = phi i32 [ 2, %5 ], [ 1, %2 ], [ 3, %16 ], [ 0, %7 ]
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.regulator_desc, ptr %25, i32 0, i32 34
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.regulator_desc, ptr %25, i32 0, i32 35
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw nsw i32 %22, 6
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %27, i32 noundef %29, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = getelementptr %struct.max77686_data, ptr %3, i32 0, i32 2, i32 %4
  store i32 %22, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %21, %17
  %36 = phi i32 [ -22, %17 ], [ 0, %33 ], [ %31, %21 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
