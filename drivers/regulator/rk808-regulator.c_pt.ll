; ModuleID = '/llk/IR/drivers/regulator/rk808-regulator.c_pt.bc'
source_filename = "../drivers/regulator/rk808-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_rk808_regulator__247_1359_rk808_regulator_driver_init6 = internal global ptr @rk808_regulator_driver_init, section ".initcall6.init", align 4
@rk808_regulator_driver = internal global %struct.platform_driver { ptr @rk808_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rk808_regulator_driver_exit = internal global ptr @rk808_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [84 x i8] c"rk808_regulator.description=regulator driver for the RK805/RK808/RK818 series PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [58 x i8] c"rk808_regulator.author=Tony xie <tony.xie@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [56 x i8] c"rk808_regulator.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [61 x i8] c"rk808_regulator.author=Zhang Qing <zhangqing@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [57 x i8] c"rk808_regulator.author=Wadim Egorov <w.egorov@phytec.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [55 x i8] c"rk808_regulator.file=drivers/regulator/rk808-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [28 x i8] c"rk808_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [47 x i8] c"rk808_regulator.alias=platform:rk808-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"rk808-regulator\00", align 1
@rk805_reg = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr @.str.8, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk805_buck_1_2_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk805_buck_1_2_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @rk805_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }], align 4
@rk808_reg = internal constant [14 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr @.str.8, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rk808_buck1_2_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 24, ptr @rk808_buck1_2_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @rk808_buck1_2_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 24, ptr @rk808_buck1_2_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.19, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.19, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.20, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 16, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk808_ldo3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.22, ptr @.str.23, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr @.str.24, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.20, ptr @.str.26, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.3, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@rk809_reg = internal constant [16 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr @.str.8, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 187, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 186, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 190, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 189, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 193, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 192, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 100, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 196, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 195, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.33, ptr @.str.22, ptr @.str.33, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @rk809_buck5_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk809_buck5_voltage_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 222, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 204, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 206, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.16, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 208, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.19, ptr @.str.21, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 210, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.19, ptr @.str.23, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 212, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.19, ptr @.str.24, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 214, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.20, ptr @.str.26, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 216, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.20, ptr @.str.27, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 218, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.20, ptr @.str.34, i8 0, ptr @.str.3, ptr null, i32 12, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 220, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr @.str.22, ptr @.str.29, i8 0, ptr @.str.3, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @rk817_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.30, ptr @.str.31, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @rk817_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@rk817_reg = internal constant [15 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr @.str.8, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 187, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 186, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 190, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 189, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 193, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 192, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 100, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 196, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 195, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 204, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 206, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.16, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 208, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.19, ptr @.str.21, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 210, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.19, ptr @.str.23, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 212, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.19, ptr @.str.24, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 214, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.20, ptr @.str.26, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 216, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.20, ptr @.str.27, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 218, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.20, ptr @.str.34, i8 0, ptr @.str.3, ptr null, i32 12, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 220, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.30, ptr @.str.36, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @rk817_boost_ops, i32 0, i32 0, ptr null, i32 4700000, i32 100000, i32 0, i32 0, i32 0, i32 -1900000, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 222, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.22, ptr @.str.37, i8 0, ptr @.str.3, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @rk817_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@rk818_reg = internal constant [17 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr @.str.8, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 19, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.39, ptr @.str.38, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 4700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.19, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.19, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.20, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk808_ldo3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.30, ptr @.str.21, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.20, ptr @.str.23, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.30, ptr @.str.24, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.20, ptr @.str.26, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.30, ptr @.str.27, i8 0, ptr @.str.3, ptr null, i32 12, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.22, ptr @.str.34, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr @.str.22, ptr @.str.40, i8 0, ptr @.str.3, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.43, ptr @.str.37, i8 0, ptr @.str.3, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported RK8XX ID %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register %d regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dvs\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to get dvs%d gpio (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"there is no dvs%d gpio\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DCDC_REG1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"vcc1\00", align 1
@rk808_reg_ops_ranges = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage_range, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@rk805_buck_1_2_voltage_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 712500, i32 0, i32 59, i32 12500 }, %struct.linear_range { i32 1800000, i32 60, i32 62, i32 200000 }, %struct.linear_range { i32 2300000, i32 63, i32 63, i32 0 }], align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"DCDC_REG2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"vcc2\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"DCDC_REG3\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vcc3\00", align 1
@rk805_switch_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk805_set_suspend_enable, ptr @rk805_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"DCDC_REG4\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"vcc4\00", align 1
@rk805_reg_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk805_set_suspend_enable, ptr @rk805_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"LDO_REG1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"vcc5\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"LDO_REG2\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"LDO_REG3\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"vcc6\00", align 1
@rk808_buck1_2_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @rk808_buck1_2_set_voltage_sel, ptr null, ptr @rk808_buck1_2_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @rk808_buck1_2_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@rk808_buck1_2_ramp_table = internal constant [4 x i32] [i32 2000, i32 4000, i32 6000, i32 10000], align 4
@rk808_switch_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@rk808_reg_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"vcc7\00", align 1
@rk808_ldo3_voltage_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 13, i32 100000 }, %struct.linear_range { i32 2500000, i32 15, i32 15, i32 0 }], align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"LDO_REG4\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"vcc9\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"LDO_REG5\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"LDO_REG6\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"vcc10\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"LDO_REG7\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"LDO_REG8\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"vcc11\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"SWITCH_REG1\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"vcc8\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"SWITCH_REG2\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"vcc12\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rk817_buck_ops_range = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr @rk8xx_set_mode, ptr @rk8xx_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage_range, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr @rk8xx_set_suspend_mode, ptr null, ptr null }, align 4
@rk817_buck1_voltage_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 80, i32 12500 }, %struct.linear_range { i32 1600000, i32 81, i32 89, i32 100000 }], align 4
@rk817_buck1_4_ramp_table = internal constant [4 x i32] [i32 3000, i32 6300, i32 12500, i32 25000], align 4
@rk817_buck3_voltage_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 80, i32 12500 }, %struct.linear_range { i32 1600000, i32 81, i32 99, i32 100000 }], align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"DCDC_REG5\00", align 1
@rk809_buck5_ops_range = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage_range, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@rk809_buck5_voltage_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 1800000, i32 1, i32 3, i32 200000 }, %struct.linear_range { i32 2800000, i32 4, i32 5, i32 200000 }, %struct.linear_range { i32 3300000, i32 6, i32 7, i32 300000 }], align 4
@rk817_reg_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"LDO_REG9\00", align 1
@rk817_switch_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"do not support this mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"BOOST\00", align 1
@rk817_boost_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"OTG_SWITCH\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"DCDC_BOOST\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"SWITCH_REG\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"HDMI_SWITCH\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"h_5v\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_rk808_regulator_driver_exit, ptr @__initcall__kmod_rk808_regulator__247_1359_rk808_regulator_driver_init6, ptr @rk808_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk808_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk808_regulator_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk808_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk808_regulator_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %13 = getelementptr inbounds %struct.rk808, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_get_child_by_name(ptr noundef %16, ptr noundef nonnull @.str.3) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 3) #8
  store ptr %20, ptr %9, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %34, %19
  %23 = phi i32 [ 0, %19 ], [ 1, %34 ]
  %24 = phi ptr [ %20, %19 ], [ %36, %34 ]
  %25 = ptrtoint ptr %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %23, i32 noundef %25) #9
  br label %47

26:                                               ; preds = %19
  %27 = icmp eq ptr %20, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  br label %34

29:                                               ; preds = %26
  %30 = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %20) #8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 2, i32 0
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 80, i32 noundef 2, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i32 [ %33, %29 ], [ 0, %28 ]
  %36 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 3) #8
  %37 = getelementptr [2 x ptr], ptr %9, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %22, label %39

39:                                               ; preds = %34
  %40 = icmp eq ptr %36, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %36) #8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 4, i32 0
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 80, i32 noundef 4, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %47

46:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  br label %47

47:                                               ; preds = %46, %41, %22
  %48 = phi i32 [ %25, %22 ], [ %45, %41 ], [ %35, %46 ]
  tail call void @of_node_put(ptr noundef nonnull %17) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %51, align 8
  %52 = getelementptr inbounds %struct.rk808, ptr %7, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  switch i32 %53, label %58 [
    i32 32848, label %59
    i32 0, label %54
    i32 32912, label %55
    i32 33136, label %56
    i32 33152, label %57
  ]

54:                                               ; preds = %50
  br label %59

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  br label %59

57:                                               ; preds = %50
  br label %59

58:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %53) #9
  br label %75

59:                                               ; preds = %57, %56, %55, %54, %50
  %60 = phi ptr [ @rk818_reg, %57 ], [ @rk817_reg, %56 ], [ @rk809_reg, %55 ], [ @rk808_reg, %54 ], [ @rk805_reg, %50 ]
  %61 = phi i32 [ 17, %57 ], [ 15, %56 ], [ 16, %55 ], [ 14, %54 ], [ 7, %50 ]
  store ptr %12, ptr %2, align 4
  %62 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %9, ptr %62, align 4
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %72, %59
  %66 = phi i32 [ 0, %59 ], [ %73, %72 ]
  %67 = getelementptr %struct.regulator_desc, ptr %60, i32 %66
  %68 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %67, ptr noundef nonnull %2) #8
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef %66) #9
  %71 = ptrtoint ptr %68 to i32
  br label %75

72:                                               ; preds = %65
  %73 = add nuw nsw i32 %66, 1
  %74 = icmp eq i32 %73, %61
  br i1 %74, label %75, label %65

75:                                               ; preds = %72, %70, %58, %47, %11, %1
  %76 = phi i32 [ -22, %58 ], [ %71, %70 ], [ -12, %1 ], [ %48, %47 ], [ -6, %11 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
define internal i32 @rk808_set_suspend_voltage_range(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %0, i32 noundef %1, i32 noundef %1) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %9, i32 noundef %13, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %14, %5 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 2
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %5, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 2
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %5, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk805_set_suspend_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 2
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %5, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk805_set_suspend_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 2
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %5, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @regulator_map_voltage_linear(ptr noundef %0, i32 noundef %1, i32 noundef %1) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %9, i32 noundef %13, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %14, %5 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_buck1_2_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %7 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %12 = icmp eq ptr %8, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef %11, ptr noundef nonnull %3) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4
  %22 = xor i32 %15, -1
  %23 = and i32 %21, %22
  %24 = and i32 %21, %15
  %25 = call i32 @llvm.cttz.i32(i32 %15, i1 true) #8, !range !9
  %26 = icmp eq i32 %15, 0
  %27 = select i1 %26, i32 -1, i32 %25
  %28 = lshr i32 %24, %27
  %29 = sub i32 %1, %28
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %43

31:                                               ; preds = %31, %20
  %32 = phi i32 [ %33, %31 ], [ %28, %20 ]
  %33 = add i32 %32, 8
  %34 = shl i32 %33, %27
  %35 = or i32 %34, %23
  store i32 %35, ptr %3, align 4
  %36 = load ptr, ptr %16, align 4
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.regulator_desc, ptr %37, i32 0, i32 27
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @regmap_write(ptr noundef %36, i32 noundef %39, i32 noundef %35) #8
  %41 = sub i32 %1, %33
  %42 = icmp sgt i32 %41, 8
  br i1 %42, label %31, label %43

43:                                               ; preds = %31, %20
  %44 = shl i32 %1, %27
  %45 = or i32 %23, %44
  store i32 %45, ptr %3, align 4
  %46 = load ptr, ptr %16, align 4
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.regulator_desc, ptr %47, i32 0, i32 27
  %49 = load i32, ptr %48, align 4
  %50 = call i32 @regmap_write(ptr noundef %46, i32 noundef %49, i32 noundef %45) #8
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748) #8
  br label %52

52:                                               ; preds = %43, %13
  %53 = phi i32 [ %50, %43 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %92

54:                                               ; preds = %2
  %55 = tail call i32 @gpiod_get_value(ptr noundef nonnull %8) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = add i32 %11, 2
  %59 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.regulator_desc, ptr %61, i32 0, i32 27
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @regmap_read(ptr noundef %60, i32 noundef %63, ptr noundef nonnull %4) #8
  br label %70

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = add i32 %11, 2
  %69 = call i32 @regmap_read(ptr noundef %67, i32 noundef %68, ptr noundef nonnull %4) #8
  br label %70

70:                                               ; preds = %65, %57
  %71 = phi i32 [ %58, %57 ], [ %11, %65 ]
  %72 = phi i32 [ %64, %57 ], [ %69, %65 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.regulator_desc, ptr %75, i32 0, i32 28
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @llvm.cttz.i32(i32 %77, i1 true), !range !9
  %79 = icmp eq i32 %77, 0
  %80 = select i1 %79, i32 -1, i32 %78
  %81 = shl i32 %1, %80
  %82 = load i32, ptr %4, align 4
  %83 = xor i32 %77, -1
  %84 = and i32 %82, %83
  %85 = or i32 %81, %84
  %86 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 @regmap_write(ptr noundef %87, i32 noundef %71, i32 noundef %85) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %74
  %91 = zext i1 %56 to i32
  call void @gpiod_set_value(ptr noundef nonnull %8, i32 noundef %91) #8
  br label %92

92:                                               ; preds = %90, %74, %70, %52
  %93 = phi i32 [ 0, %90 ], [ %53, %52 ], [ %72, %70 ], [ %88, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_buck1_2_get_voltage_sel_regmap(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %5 = getelementptr [2 x ptr], ptr %3, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @gpiod_get_value(ptr noundef nonnull %6) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %1
  %12 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #8
  br label %32

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 27
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 2
  %20 = call i32 @regmap_read(ptr noundef %15, i32 noundef %19, ptr noundef nonnull %2) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 28
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, %25
  %28 = call i32 @llvm.cttz.i32(i32 %25, i1 true), !range !9
  %29 = icmp eq i32 %25, 0
  %30 = select i1 %29, i32 -1, i32 %28
  %31 = lshr i32 %27, %30
  br label %32

32:                                               ; preds = %22, %13, %11
  %33 = phi i32 [ %12, %11 ], [ %31, %22 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_buck1_2_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %6 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @regulator_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk8xx_regulator_of_map_mode(i32 noundef %0) #7 {
  %2 = icmp eq i32 %0, 2
  %3 = select i1 %2, i32 2, i32 0
  %4 = icmp eq i32 %0, 1
  %5 = select i1 %4, i32 1, i32 %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk8xx_is_enabled_wmsk_regmap(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 34
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 240
  %15 = load i32, ptr %2, align 4
  %16 = or i32 %15, %14
  %17 = and i32 %16, %13
  %18 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 38
  %19 = load i8, ptr %18, align 4, !range !10
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 36
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %20, label %31, label %24

24:                                               ; preds = %10
  br i1 %23, label %28, label %25

25:                                               ; preds = %24
  %26 = icmp ne i32 %17, %22
  %27 = zext i1 %26 to i32
  br label %38

28:                                               ; preds = %24
  %29 = icmp eq i32 %17, 0
  %30 = zext i1 %29 to i32
  br label %38

31:                                               ; preds = %10
  br i1 %23, label %35, label %32

32:                                               ; preds = %31
  %33 = icmp eq i32 %17, %22
  %34 = zext i1 %33 to i32
  br label %38

35:                                               ; preds = %31
  %36 = icmp ne i32 %17, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %35, %32, %28, %25, %1
  %39 = phi i32 [ %27, %25 ], [ %30, %28 ], [ %34, %32 ], [ %37, %35 ], [ %8, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk8xx_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  switch i32 %1, label %17 [
    i32 1, label %3
    i32 2, label %10
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %8, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 27
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %15, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.35) #9
  br label %19

19:                                               ; preds = %17, %10, %3
  %20 = phi i32 [ -22, %17 ], [ %16, %10 ], [ %9, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk8xx_get_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2, i32 1
  %14 = select i1 %9, i32 %13, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk817_set_suspend_enable(ptr noundef %0) #2 {
  %2 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = add i32 %2, -4
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %2, 4
  br label %14

9:                                                ; preds = %4
  %10 = and i32 %2, -4
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = add nsw i32 %2, -8
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = phi i32 [ %8, %7 ], [ %13, %12 ], [ %2, %1 ]
  %16 = lshr i32 %15, 3
  %17 = add nuw nsw i32 %16, 181
  %18 = and i32 %15, 7
  %19 = shl nuw nsw i32 1, %18
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %17, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %23

23:                                               ; preds = %14, %9
  %24 = phi i32 [ %22, %14 ], [ -22, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk817_set_suspend_disable(ptr noundef %0) #2 {
  %2 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = add i32 %2, -4
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %2, 4
  br label %14

9:                                                ; preds = %4
  %10 = and i32 %2, -4
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = add nsw i32 %2, -8
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = phi i32 [ %8, %7 ], [ %13, %12 ], [ %2, %1 ]
  %16 = lshr i32 %15, 3
  %17 = add nuw nsw i32 %16, 181
  %18 = and i32 %15, 7
  %19 = shl nuw nsw i32 1, %18
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %17, i32 noundef %19, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %23

23:                                               ; preds = %14, %9
  %24 = phi i32 [ %22, %14 ], [ -22, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk8xx_set_suspend_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 27
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  switch i32 %1, label %15 [
    i32 1, label %7
    i32 2, label %11
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %6, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.35) #9
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = phi i32 [ -22, %15 ], [ %14, %11 ], [ %10, %7 ]
  ret i32 %18
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
