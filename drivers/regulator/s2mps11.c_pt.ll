; ModuleID = '/llk/IR/drivers/regulator/s2mps11.c_pt.bc'
source_filename = "../drivers/regulator/s2mps11.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.s2mps11_info = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_s2mps11__252_1246_s2mps11_pmic_driver_init6 = internal global ptr @s2mps11_pmic_driver_init, section ".initcall6.init", align 4
@s2mps11_pmic_driver = internal global %struct.platform_driver { ptr @s2mps11_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s2mps11_pmic_id, i8 0 }, align 4
@__exitcall_s2mps11_pmic_driver_exit = internal global ptr @s2mps11_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [50 x i8] c"s2mps11.author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [77 x i8] c"s2mps11.description=Samsung S2MPS11/S2MPS14/S2MPS15/S2MPU02 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [39 x i8] c"s2mps11.file=drivers/regulator/s2mps11\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [20 x i8] c"s2mps11.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"s2mps11-pmic\00", align 1
@s2mps11_pmic_id = internal constant [6 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s2mps11-regulator\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"s2mps13-regulator\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"s2mps14-regulator\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"s2mps15-regulator\00\00\00", i32 7 }, %struct.platform_device_id { [20 x i8] c"s2mpu02-regulator\00\00\00", i32 8 }, %struct.platform_device_id zeroinitializer], align 4
@s2mps11_regulators = internal constant [48 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 90, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 90, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 91, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 91, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 92, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 92, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 93, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 94, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 94, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 95, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 95, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 96, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 97, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 37, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 98, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 98, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 38, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 39, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 40, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 41, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 42, i8 0, i32 216, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 43, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 44, i8 0, i32 225, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 12500, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 45, i8 0, i32 225, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 12500, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 46, i8 0, i32 32, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 3000000, i32 25000, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 47, i8 0, i32 225, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 12500, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@s2mps13_regulators = internal constant [50 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 90, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 90, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 37, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 91, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 91, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 38, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 92, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 92, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 39, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 93, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 40, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 41, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 42, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 43, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 44, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 45, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 46, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 47, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 12500, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 48, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 12500, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 49, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@s2mps14_regulators = internal constant [30 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 12500, i32 64, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@s2mps15_regulators = internal constant [37 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges5, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 36, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 38, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 42, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 44, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@s2mpu02_regulators = internal constant [35 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 256, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1081250, i32 6250, i32 77, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 256, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1700000, i32 2500, i32 40, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 256, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 6250, i32 48, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid device type: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"regulator init failed for %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to enable GPIO control over %s: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@s2mps11_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"LDO19\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"LDO20\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"LDO21\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"LDO22\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"LDO23\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"LDO24\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"LDO25\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"LDO26\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"LDO27\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"LDO28\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"LDO29\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"LDO30\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"LDO31\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"LDO32\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"LDO33\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"LDO34\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"LDO35\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"LDO36\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"LDO37\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"LDO38\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@s2mps11_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_set_ramp_delay, ptr null, ptr @s2mps11_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"BUCK5\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"BUCK6\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"BUCK7\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"BUCK8\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"BUCK9\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"BUCK10\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"failed to enable ramp rate\0A\00", align 1
@s2mps14_reg_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"LDO39\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"LDO40\00", align 1
@s2mps15_reg_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@s2mps15_ldo_voltage_ranges5 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 32, i32 12500 }], align 4
@s2mps15_ldo_voltage_ranges2 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 63, i32 25000 }], align 4
@s2mps15_ldo_voltage_ranges1 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 12, i32 56, i32 25000 }], align 4
@s2mps15_ldo_voltage_ranges3 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 52, i32 12500 }], align 4
@s2mps15_ldo_voltage_ranges4 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 16, i32 32, i32 25000 }], align 4
@s2mps15_reg_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@s2mps15_buck_voltage_ranges1 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 32, i32 192, i32 6250 }], align 4
@s2mps15_buck_voltage_ranges2 = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 32, i32 120, i32 12500 }], align 4
@s2mpu02_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@s2mpu02_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @s2mpu02_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"could not find regulators sub-node\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"samsung,ext-control\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"s2mps11-regulator\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"Failed to get control GPIO for %d/%s\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_s2mps11_pmic_driver_exit, ptr @__initcall__kmod_s2mps11__252_1246_s2mps11_pmic_driver_init6, ptr @s2mps11_pmic_driver_exit], section "llvm.metadata"
@switch.table.s2mps11_pmic_probe = private unnamed_addr constant [5 x i32] [i32 48, i32 50, i32 30, i32 37, i32 35], align 4
@switch.table.s2mps11_pmic_probe.60 = private unnamed_addr constant [5 x ptr] [ptr @s2mps11_regulators, ptr @s2mps13_regulators, ptr @s2mps14_regulators, ptr @s2mps15_regulators, ptr @s2mpu02_regulators], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s2mps11_pmic_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s2mps11_pmic_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @s2mps11_pmic_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s2mps11_pmic_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 40, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %157, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_device_id, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s2mps11_info, ptr %8, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  %16 = add i32 %14, -4
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %14) #9
  br label %157

19:                                               ; preds = %10
  %20 = getelementptr inbounds [5 x i32], ptr @switch.table.s2mps11_pmic_probe, i32 0, i32 %16
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [5 x ptr], ptr @switch.table.s2mps11_pmic_probe.60, i32 0, i32 %16
  %23 = load ptr, ptr %22, align 4
  %24 = shl nuw nsw i32 %21, 2
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %24, i32 noundef 3520) #8
  %26 = getelementptr inbounds %struct.s2mps11_info, ptr %8, i32 0, i32 8
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %157, label %28

28:                                               ; preds = %19
  %29 = mul nuw nsw i32 %21, 20
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %157, label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %37, %32 ], [ 0, %28 ]
  %34 = getelementptr %struct.regulator_desc, ptr %23, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %struct.of_regulator_match, ptr %30, i32 %33
  store ptr %35, ptr %36, align 4
  %37 = add nuw nsw i32 %33, 1
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %39, label %32

39:                                               ; preds = %32
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = tail call ptr @of_get_child_by_name(ptr noundef %42, ptr noundef nonnull @.str.55) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %105, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @of_regulator_match(ptr noundef %3, ptr noundef nonnull %43, ptr noundef nonnull %30, i32 noundef %21) #8
  %47 = icmp eq i32 %14, 6
  br i1 %47, label %48, label %106

48:                                               ; preds = %45
  %49 = getelementptr %struct.of_regulator_match, ptr %30, i32 9
  %50 = getelementptr %struct.of_regulator_match, ptr %30, i32 9, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = getelementptr %struct.of_regulator_match, ptr %30, i32 9, i32 3
  %55 = load ptr, ptr %54, align 64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.device_node, ptr %55, i32 0, i32 3
  %59 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef %58, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.58) #8
  %60 = getelementptr ptr, ptr %25, i32 9
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, inttoptr (i32 -2 to ptr)
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef 9, ptr noundef %65) #9
  br label %66

66:                                               ; preds = %64, %57
  store ptr null, ptr %60, align 4
  br label %67

67:                                               ; preds = %66, %62, %53, %48
  %68 = getelementptr %struct.of_regulator_match, ptr %30, i32 10
  %69 = getelementptr %struct.of_regulator_match, ptr %30, i32 10, i32 2
  %70 = load ptr, ptr %69, align 16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %67
  %73 = getelementptr %struct.of_regulator_match, ptr %30, i32 10, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.device_node, ptr %74, i32 0, i32 3
  %78 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef %77, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.58) #8
  %79 = getelementptr ptr, ptr %25, i32 10
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, inttoptr (i32 -2 to ptr)
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load ptr, ptr %68, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef 10, ptr noundef %84) #9
  br label %85

85:                                               ; preds = %83, %76
  store ptr null, ptr %79, align 4
  br label %86

86:                                               ; preds = %85, %81, %72, %67
  %87 = getelementptr %struct.of_regulator_match, ptr %30, i32 11
  %88 = getelementptr %struct.of_regulator_match, ptr %30, i32 11, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = getelementptr %struct.of_regulator_match, ptr %30, i32 11, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.device_node, ptr %93, i32 0, i32 3
  %97 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef %96, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.58) #8
  %98 = getelementptr ptr, ptr %25, i32 11
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, inttoptr (i32 -2 to ptr)
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef 11, ptr noundef %103) #9
  br label %104

104:                                              ; preds = %102, %95
  store ptr null, ptr %98, align 4
  br label %106

105:                                              ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56) #9
  br label %155

106:                                              ; preds = %104, %100, %91, %86, %45
  tail call void @of_node_put(ptr noundef nonnull %43) #8
  %107 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %107, align 8
  store ptr %3, ptr %2, align 4
  %108 = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %8, ptr %111, align 4
  %112 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %113 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %114 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 5
  br label %115

115:                                              ; preds = %153, %106
  %116 = phi ptr [ %25, %106 ], [ %154, %153 ]
  %117 = phi i32 [ 0, %106 ], [ %150, %153 ]
  %118 = phi i32 [ 0, %106 ], [ %151, %153 ]
  %119 = getelementptr %struct.of_regulator_match, ptr %30, i32 %118, i32 2
  %120 = load ptr, ptr %119, align 4
  store ptr %120, ptr %112, align 4
  %121 = getelementptr %struct.of_regulator_match, ptr %30, i32 %118, i32 3
  %122 = load ptr, ptr %121, align 4
  store ptr %122, ptr %113, align 4
  %123 = getelementptr ptr, ptr %116, i32 %118
  %124 = load ptr, ptr %123, align 4
  store ptr %124, ptr %114, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  call void @devm_gpiod_unhinge(ptr noundef %3, ptr noundef nonnull %124) #8
  br label %127

127:                                              ; preds = %126, %115
  %128 = getelementptr %struct.regulator_desc, ptr %23, i32 %118
  %129 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %128, ptr noundef nonnull %2) #8
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = ptrtoint ptr %129 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %118) #9
  br label %155

133:                                              ; preds = %127
  %134 = load ptr, ptr %114, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %149, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.regulator_dev, ptr %129, i32 0, i32 17
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %129, align 8
  %140 = getelementptr inbounds %struct.regulator_desc, ptr %139, i32 0, i32 34
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.regulator_desc, ptr %139, i32 0, i32 35
  %143 = load i32, ptr %142, align 4
  %144 = call i32 @regmap_update_bits_base(ptr noundef %138, i32 noundef %141, i32 noundef %143, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load ptr, ptr %129, align 8
  %148 = load ptr, ptr %147, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %148, i32 noundef %144) #9
  br label %155

149:                                              ; preds = %136, %133
  %150 = phi i32 [ %117, %133 ], [ %144, %136 ]
  %151 = add nuw nsw i32 %118, 1
  %152 = icmp eq i32 %151, %21
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %26, align 4
  br label %115

155:                                              ; preds = %149, %146, %131, %105
  %156 = phi i32 [ -22, %105 ], [ %132, %131 ], [ %144, %146 ], [ %150, %149 ]
  call void @kfree(ptr noundef nonnull %30) #8
  br label %157

157:                                              ; preds = %155, %28, %19, %18, %1
  %158 = phi i32 [ -22, %18 ], [ %156, %155 ], [ -12, %1 ], [ -12, %19 ], [ -12, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %158
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_regulator_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.s2mps11_info, ptr %2, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %53 [
    i32 4, label %6
    i32 5, label %15
    i32 6, label %15
    i32 8, label %30
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s2mps11_info, ptr %2, i32 0, i32 7
  %8 = lshr i32 %3, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %3, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %43

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.s2mps11_info, ptr %2, i32 0, i32 7
  %17 = lshr i32 %3, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %3, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.s2mps11_info, ptr %2, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr ptr, ptr %26, i32 %3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %43

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.s2mps11_info, ptr %2, i32 0, i32 7
  %32 = lshr i32 %3, 5
  %33 = getelementptr i32, ptr %31, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %3, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30, %24, %6
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.regulator_desc, ptr %40, i32 0, i32 35
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %30, %24, %15, %6
  %44 = phi i32 [ 64, %6 ], [ 64, %15 ], [ 0, %24 ], [ 64, %30 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.regulator_desc, ptr %47, i32 0, i32 34
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.regulator_desc, ptr %47, i32 0, i32 35
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %49, i32 noundef %51, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %53

53:                                               ; preds = %43, %1
  %54 = phi i32 [ %52, %43 ], [ -22, %1 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_regulator_set_suspend_disable(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %34 [
    i32 4, label %7
    i32 5, label %8
    i32 6, label %8
    i32 8, label %10
  ]

7:                                                ; preds = %1
  switch i32 %4, label %12 [
    i32 1, label %34
    i32 35, label %34
    i32 36, label %34
    i32 37, label %34
  ]

8:                                                ; preds = %1, %1
  %9 = icmp eq i32 %4, 2
  br i1 %9, label %34, label %12

10:                                               ; preds = %1
  switch i32 %4, label %11 [
    i32 12, label %12
    i32 13, label %12
    i32 14, label %12
    i32 16, label %12
    i32 34, label %12
  ]

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10, %10, %10, %10, %10, %8, %7
  %13 = phi i32 [ 64, %11 ], [ 64, %7 ], [ 64, %8 ], [ 1088, %10 ], [ 1088, %10 ], [ 1088, %10 ], [ 1088, %10 ], [ 1088, %10 ]
  %14 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 34
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %15, i32 noundef %18, ptr noundef nonnull %2) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 7
  call void @_set_bit(i32 noundef %4, ptr noundef %22) #8
  %23 = load i32, ptr %2, align 4
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.regulator_desc, ptr %24, i32 0, i32 35
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %24, i32 0, i32 34
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef %26, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %34

34:                                               ; preds = %29, %21, %12, %8, %7, %7, %7, %7, %1
  %35 = phi i32 [ %33, %29 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %8 ], [ -22, %1 ], [ %19, %12 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_set_ramp_delay(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %4, label %84 [
    i32 38, label %5
    i32 39, label %9
    i32 40, label %11
    i32 41, label %17
    i32 42, label %23
    i32 43, label %25
    i32 44, label %31
    i32 45, label %31
    i32 47, label %31
    i32 46, label %35
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %54, label %57

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %78, label %37

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %37, label %42

17:                                               ; preds = %2
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %78, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, %1
  br i1 %22, label %37, label %42

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 2
  br label %54

25:                                               ; preds = %2
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %78, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %37, label %42

31:                                               ; preds = %2, %2, %2
  %32 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %54, label %57

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.s2mps11_info, ptr %3, i32 0, i32 5
  br label %54

37:                                               ; preds = %27, %19, %13, %9
  %38 = phi ptr [ %3, %9 ], [ %14, %13 ], [ %20, %19 ], [ %28, %27 ]
  %39 = phi i32 [ 3, %9 ], [ 2, %13 ], [ 1, %19 ], [ 0, %27 ]
  %40 = phi i32 [ 16, %9 ], [ 16, %13 ], [ 16, %19 ], [ 17, %27 ]
  %41 = phi i32 [ 6, %9 ], [ 4, %13 ], [ 4, %19 ], [ 4, %27 ]
  store i32 %1, ptr %38, align 4
  br label %42

42:                                               ; preds = %37, %27, %19, %13
  %43 = phi i32 [ 2, %13 ], [ 1, %19 ], [ 0, %27 ], [ %39, %37 ]
  %44 = phi i32 [ 16, %13 ], [ 16, %19 ], [ 17, %27 ], [ %40, %37 ]
  %45 = phi i32 [ 4, %13 ], [ 4, %19 ], [ 4, %27 ], [ %41, %37 ]
  %46 = phi i32 [ %15, %13 ], [ %21, %19 ], [ %29, %27 ], [ %1, %37 ]
  %47 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = shl nuw nsw i32 1, %43
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 16, i32 noundef %49, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.52) #9
  br label %84

54:                                               ; preds = %35, %31, %23, %5
  %55 = phi ptr [ %24, %23 ], [ %36, %35 ], [ %6, %5 ], [ %32, %31 ]
  %56 = phi i32 [ 6, %23 ], [ 0, %35 ], [ 4, %5 ], [ 2, %31 ]
  store i32 %1, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %42, %31, %5
  %58 = phi i32 [ %44, %42 ], [ 17, %5 ], [ 17, %31 ], [ 17, %54 ]
  %59 = phi i32 [ %45, %42 ], [ 4, %5 ], [ 2, %31 ], [ %56, %54 ]
  %60 = phi i32 [ %46, %42 ], [ %7, %5 ], [ %33, %31 ], [ %1, %54 ]
  %61 = sdiv i32 %60, 6250
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %69, label %63

63:                                               ; preds = %63, %57
  %64 = phi i8 [ %67, %63 ], [ 0, %57 ]
  %65 = phi i32 [ %66, %63 ], [ %61, %57 ]
  %66 = ashr i32 %65, 1
  %67 = add i8 %64, 1
  %68 = icmp ult i32 %65, 4
  br i1 %68, label %69, label %63

69:                                               ; preds = %63, %57
  %70 = phi i8 [ 0, %57 ], [ %67, %63 ]
  %71 = tail call i8 @llvm.umin.i8(i8 %70, i8 3) #8
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = shl i32 3, %59
  %76 = shl i32 %72, %59
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %58, i32 noundef %75, i32 noundef %76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %84

78:                                               ; preds = %25, %17, %11, %9
  %79 = phi i32 [ 3, %9 ], [ 2, %11 ], [ 1, %17 ], [ 0, %25 ]
  %80 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = shl nuw nsw i32 1, %79
  %83 = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 16, i32 noundef %82, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %84

84:                                               ; preds = %78, %69, %52, %2
  %85 = phi i32 [ %50, %52 ], [ %77, %69 ], [ %83, %78 ], [ 0, %2 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_regulator_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %5, label %22 [
    i32 39, label %16
    i32 40, label %6
    i32 41, label %6
    i32 42, label %8
    i32 43, label %10
    i32 38, label %10
    i32 44, label %12
    i32 45, label %12
    i32 47, label %12
    i32 46, label %14
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.s2mps11_info, ptr %4, i32 0, i32 1
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.s2mps11_info, ptr %4, i32 0, i32 2
  br label %16

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.s2mps11_info, ptr %4, i32 0, i32 3
  br label %16

12:                                               ; preds = %3, %3, %3
  %13 = getelementptr inbounds %struct.s2mps11_info, ptr %4, i32 0, i32 4
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.s2mps11_info, ptr %4, i32 0, i32 5
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %6, %3
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %4, %3 ]
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8
  br label %26

22:                                               ; preds = %16, %3
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %23, %22 ], [ %21, %20 ]
  %28 = phi i32 [ %25, %22 ], [ %18, %20 ]
  %29 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %2, %1
  %32 = mul i32 %31, %30
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false)
  %34 = add i32 %28, -1
  %35 = add i32 %34, %33
  %36 = udiv i32 %35, %28
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mpu02_set_ramp_delay(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %4 = add i32 %3, -28
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = mul i32 %4, -2
  %8 = add i32 %7, 6
  %9 = sdiv i32 %1, 6250
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %6
  %12 = phi i8 [ %15, %11 ], [ 0, %6 ]
  %13 = phi i32 [ %14, %11 ], [ %9, %6 ]
  %14 = ashr i32 %13, 1
  %15 = add i8 %12, 1
  %16 = icmp ult i32 %13, 4
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %6
  %18 = phi i8 [ 0, %6 ], [ %15, %11 ]
  %19 = tail call i8 @llvm.umin.i8(i8 %18, i8 3) #8
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = shl i32 3, %8
  %24 = shl i32 %20, %8
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 42, i32 noundef %23, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %26

26:                                               ; preds = %17, %2
  %27 = phi i32 [ %25, %17 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
