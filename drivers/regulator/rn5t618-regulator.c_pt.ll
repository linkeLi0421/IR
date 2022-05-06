; ModuleID = '/llk/IR/drivers/regulator/rn5t618-regulator.c_pt.bc'
source_filename = "../drivers/regulator/rn5t618-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rn5t618 = type { ptr, ptr, i32, i32, ptr }

@__initcall__kmod_rn5t618_regulator__247_149_rn5t618_regulator_driver_init6 = internal global ptr @rn5t618_regulator_driver_init, section ".initcall6.init", align 4
@rn5t618_regulator_driver = internal global %struct.platform_driver { ptr @rn5t618_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rn5t618_regulator_driver_exit = internal global ptr @rn5t618_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias248 = internal constant [51 x i8] c"rn5t618_regulator.alias=platform:rn5t618-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [65 x i8] c"rn5t618_regulator.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [55 x i8] c"rn5t618_regulator.description=RN5T618 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [59 x i8] c"rn5t618_regulator.file=drivers/regulator/rn5t618-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [33 x i8] c"rn5t618_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"rn5t618-regulator\00", align 1
@rn5t567_regulators = internal constant [11 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 117, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 93, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 1200000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 16, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@rn5t618_regulators = internal constant [10 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 117, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 73, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 16, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@rc5t619_regulators = internal constant [17 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 233, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 117, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 117, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 12, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.3, ptr null, i32 14, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 73, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 16, i8 0, i32 105, i32 0, ptr @rn5t618_reg_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DCDC1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@rn5t618_reg_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"DCDC2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"DCDC3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"DCDC4\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"LDORTC1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"LDORTC2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"DCDC5\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_rn5t618_regulator_driver_exit, ptr @__initcall__kmod_rn5t618_regulator__247_149_rn5t618_regulator_driver_init6, ptr @rn5t618_regulator_driver_exit], section "llvm.metadata"
@switch.table.rn5t618_regulator_probe = private unnamed_addr constant [3 x ptr] [ptr @rn5t567_regulators, ptr @rn5t618_regulators, ptr @rc5t619_regulators], align 4
@switch.table.rn5t618_regulator_probe.20 = private unnamed_addr constant [3 x i32] [i32 11, i32 10, i32 17], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rn5t618_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rn5t618_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rn5t618_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rn5t618_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %8 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 20, i1 false)
  %9 = getelementptr inbounds %struct.rn5t618, ptr %7, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = getelementptr inbounds [3 x ptr], ptr @switch.table.rn5t618_regulator_probe, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds [3 x i32], ptr @switch.table.rn5t618_regulator_probe.20, i32 0, i32 %10
  %16 = load i32, ptr %15, align 4
  store ptr %5, ptr %2, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %16
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %24 = getelementptr %struct.regulator_desc, ptr %14, i32 %23
  %25 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %24, ptr noundef nonnull %2) #6
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %19

27:                                               ; preds = %22
  %28 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %28) #7
  %29 = ptrtoint ptr %25 to i32
  br label %30

30:                                               ; preds = %27, %19, %1
  %31 = phi i32 [ %29, %27 ], [ -22, %1 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %31
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
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

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
