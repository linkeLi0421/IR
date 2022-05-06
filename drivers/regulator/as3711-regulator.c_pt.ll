; ModuleID = '/llk/IR/drivers/regulator/as3711-regulator.c_pt.bc'
source_filename = "../drivers/regulator/as3711-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.as3711 = type { ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_as3711_regulator__247_254_as3711_regulator_init4 = internal global ptr @as3711_regulator_init, section ".initcall4.init", align 4
@as3711_regulator_driver = internal global %struct.platform_driver { ptr @as3711_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_as3711_regulator_exit = internal global ptr @as3711_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [70 x i8] c"as3711_regulator.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [53 x i8] c"as3711_regulator.description=AS3711 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [49 x i8] c"as3711_regulator.alias=platform:as3711-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [57 x i8] c"as3711_regulator.file=drivers/regulator/as3711-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [32 x i8] c"as3711_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"as3711-regulator\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"No platform data...\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DT parsing failed: %d\0A\00", align 1
@as3711_reg_desc = internal constant [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 1, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 2, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 3, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @as3711_aldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_aldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 4, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @as3711_aldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_aldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 5, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 6, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 7, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 8, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 9, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 10, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 11, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to register regulator %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@as3711_regulator_matches = internal global [12 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.7, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.8, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.9, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.16, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.17, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.18, ptr null, ptr null, ptr null, ptr null }], align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sd4\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ldo7\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ldo8\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"as3711-regulator-SD_1\00", align 1
@as3711_sd_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @as3711_set_mode_sd, ptr @as3711_get_mode_sd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3711_sd_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 612500, i32 1, i32 64, i32 12500 }, %struct.linear_range { i32 1425000, i32 65, i32 112, i32 25000 }, %struct.linear_range { i32 2650000, i32 113, i32 127, i32 50000 }], align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"as3711-regulator-SD_2\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"as3711-regulator-SD_3\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"as3711-regulator-SD_4\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_1\00", align 1
@as3711_aldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3711_aldo_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 1200000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 1800000, i32 16, i32 31, i32 100000 }], align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_2\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_3\00", align 1
@as3711_dldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3711_dldo_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 16, i32 50000 }, %struct.linear_range { i32 1750000, i32 32, i32 63, i32 50000 }], align 4
@.str.26 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_4\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_5\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_6\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_7\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"as3711-regulator-LDO_8\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_as3711_regulator_exit, ptr @__initcall__kmod_as3711_regulator__247_254_as3711_regulator_init4, ptr @as3711_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @as3711_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3711_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @as3711_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3711_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3711_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = alloca [12 x ptr], align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %11 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %4, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false)
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  br label %152

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %124, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %16, ptr noundef nonnull @.str.4) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #7
  br label %122

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 4
  %24 = tail call i32 @of_regulator_match(ptr noundef %23, ptr noundef nonnull %19, ptr noundef nonnull @as3711_regulator_matches, i32 noundef 12) #6
  tail call void @of_node_put(ptr noundef nonnull %19) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 0, i32 3), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %30

29:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %24) #7
  br label %122

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 0, i32 2), align 4
  store ptr %31, ptr %6, align 4
  %32 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 0, i32 3), align 4
  store ptr %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ null, %26 ]
  %35 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 1, i32 3), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 1, i32 2), align 4
  %39 = getelementptr [12 x ptr], ptr %6, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 1, i32 3), align 4
  %41 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 2, i32 3), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 2, i32 2), align 4
  %47 = getelementptr [12 x ptr], ptr %6, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 2, i32 3), align 4
  %49 = getelementptr inbounds ptr, ptr %3, i32 2
  store ptr %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 3, i32 3), align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 3, i32 2), align 4
  %55 = getelementptr [12 x ptr], ptr %6, i32 0, i32 3
  store ptr %54, ptr %55, align 4
  %56 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 3, i32 3), align 4
  %57 = getelementptr inbounds ptr, ptr %3, i32 3
  store ptr %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 4, i32 3), align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 4, i32 2), align 4
  %63 = getelementptr [12 x ptr], ptr %6, i32 0, i32 4
  store ptr %62, ptr %63, align 4
  %64 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 4, i32 3), align 4
  %65 = getelementptr inbounds ptr, ptr %3, i32 4
  store ptr %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 5, i32 3), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 5, i32 2), align 4
  %71 = getelementptr [12 x ptr], ptr %6, i32 0, i32 5
  store ptr %70, ptr %71, align 4
  %72 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 5, i32 3), align 4
  %73 = getelementptr inbounds ptr, ptr %3, i32 5
  store ptr %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 6, i32 3), align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 6, i32 2), align 4
  %79 = getelementptr [12 x ptr], ptr %6, i32 0, i32 6
  store ptr %78, ptr %79, align 4
  %80 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 6, i32 3), align 4
  %81 = getelementptr inbounds ptr, ptr %3, i32 6
  store ptr %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 7, i32 3), align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 7, i32 2), align 4
  %87 = getelementptr [12 x ptr], ptr %6, i32 0, i32 7
  store ptr %86, ptr %87, align 4
  %88 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 7, i32 3), align 4
  %89 = getelementptr inbounds ptr, ptr %3, i32 7
  store ptr %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %85, %82
  %91 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 8, i32 3), align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 8, i32 2), align 4
  %95 = getelementptr [12 x ptr], ptr %6, i32 0, i32 8
  store ptr %94, ptr %95, align 4
  %96 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 8, i32 3), align 4
  %97 = getelementptr inbounds ptr, ptr %3, i32 8
  store ptr %96, ptr %97, align 4
  br label %98

98:                                               ; preds = %93, %90
  %99 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 9, i32 3), align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 9, i32 2), align 4
  %103 = getelementptr [12 x ptr], ptr %6, i32 0, i32 9
  store ptr %102, ptr %103, align 4
  %104 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 9, i32 3), align 4
  %105 = getelementptr inbounds ptr, ptr %3, i32 9
  store ptr %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 10, i32 3), align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 10, i32 2), align 4
  %111 = getelementptr [12 x ptr], ptr %6, i32 0, i32 10
  store ptr %110, ptr %111, align 4
  %112 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 10, i32 3), align 4
  %113 = getelementptr inbounds ptr, ptr %3, i32 10
  store ptr %112, ptr %113, align 4
  br label %114

114:                                              ; preds = %109, %106
  %115 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 11, i32 3), align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 11, i32 2), align 4
  %119 = getelementptr [12 x ptr], ptr %6, i32 0, i32 11
  store ptr %118, ptr %119, align 4
  %120 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 11, i32 3), align 4
  %121 = getelementptr inbounds ptr, ptr %3, i32 11
  store ptr %120, ptr %121, align 4
  br label %124

122:                                              ; preds = %29, %21
  %123 = phi i32 [ -19, %21 ], [ %24, %29 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %123) #7
  br label %152

124:                                              ; preds = %117, %114, %14
  %125 = phi ptr [ %34, %117 ], [ %34, %114 ], [ null, %14 ]
  %126 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %127 = getelementptr inbounds %struct.as3711, ptr %10, i32 0, i32 1
  %128 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %129 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %130 = load ptr, ptr %6, align 4
  store ptr %130, ptr %126, align 4
  %131 = load ptr, ptr %127, align 4
  store ptr %131, ptr %128, align 4
  store ptr %125, ptr %129, align 4
  %132 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef nonnull @as3711_reg_desc, ptr noundef nonnull %2) #6
  %133 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %147, label %134

134:                                              ; preds = %138, %124
  %135 = phi i32 [ %136, %138 ], [ 0, %124 ]
  %136 = add nuw nsw i32 %135, 1
  %137 = icmp eq i32 %136, 12
  br i1 %137, label %152, label %138

138:                                              ; preds = %134
  %139 = getelementptr [12 x ptr], ptr %3, i32 0, i32 %136
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr [12 x ptr], ptr %6, i32 0, i32 %136
  %142 = load ptr, ptr %141, align 4
  store ptr %142, ptr %126, align 4
  %143 = load ptr, ptr %127, align 4
  store ptr %143, ptr %128, align 4
  store ptr %140, ptr %129, align 4
  %144 = getelementptr [12 x %struct.regulator_desc], ptr @as3711_reg_desc, i32 0, i32 %136
  %145 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %144, ptr noundef nonnull %2) #6
  %146 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %147, label %134

147:                                              ; preds = %138, %124
  %148 = phi ptr [ @as3711_reg_desc, %124 ], [ %144, %138 ]
  %149 = phi ptr [ %132, %124 ], [ %145, %138 ]
  %150 = load ptr, ptr %148, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %150) #7
  %151 = ptrtoint ptr %149 to i32
  br label %152

152:                                              ; preds = %147, %134, %122, %13
  %153 = phi i32 [ %123, %122 ], [ %151, %147 ], [ -19, %13 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %153
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

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
define internal i32 @as3711_set_mode_sd(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 35
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 4
  switch i32 %1, label %17 [
    i32 1, label %7
    i32 2, label %10
    i32 4, label %9
  ]

7:                                                ; preds = %2
  %8 = or i32 %6, %5
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %7, %2
  %11 = phi i32 [ 0, %9 ], [ %8, %7 ], [ %6, %2 ]
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = or i32 %6, %5
  %15 = and i32 %11, 255
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef %14, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i32 [ %16, %10 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3711_get_mode_sd(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 35
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 48, ptr noundef nonnull %2) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = or i32 %6, %5
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %14, %6
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %14, 0
  %20 = select i1 %19, i32 4, i32 -22
  br label %21

21:                                               ; preds = %18, %16, %11, %1
  %22 = phi i32 [ %9, %1 ], [ 1, %11 ], [ 2, %16 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
