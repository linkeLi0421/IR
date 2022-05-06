; ModuleID = '/llk/IR/drivers/regulator/as3722-regulator.c_pt.bc'
source_filename = "../drivers/regulator/as3722-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.as3722_register_mapping = type { i8, ptr, ptr, i8, i8, i32, i32, i8, i32, i8, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.as3722_regulators = type { ptr, ptr, [18 x %struct.regulator_desc], [18 x %struct.as3722_regulator_config_data] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.as3722_regulator_config_data = type { ptr, i8, i32 }
%struct.as3722 = type { ptr, ptr, i32, i32, i8, i8, i8, ptr }

@__initcall__kmod_as3722_regulator__247_839_as3722_regulator_driver_init6 = internal global ptr @as3722_regulator_driver_init, section ".initcall6.init", align 4
@as3722_regulator_driver = internal global %struct.platform_driver { ptr @as3722_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_as3722_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_as3722_regulator_driver_exit = internal global ptr @as3722_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias248 = internal constant [49 x i8] c"as3722_regulator.alias=platform:as3722-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [53 x i8] c"as3722_regulator.description=AS3722 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [68 x i8] c"as3722_regulator.author=Florian Lobmaier <florian.lobmaier@ams.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [63 x i8] c"as3722_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [57 x i8] c"as3722_regulator.file=drivers/regulator/as3722-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [29 x i8] c"as3722_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"as3722-regulator\00", align 1
@of_as3722_regulator_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as3722-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@as3722_reg_lookup = internal unnamed_addr constant [18 x %struct.as3722_register_mapping] [%struct.as3722_register_mapping { i8 0, ptr @.str.11, ptr null, i8 0, i8 127, i32 0, i32 77, i8 1, i32 41, i8 16, i32 60, i8 3 }, %struct.as3722_register_mapping { i8 1, ptr @.str.12, ptr null, i8 1, i8 127, i32 0, i32 77, i8 2, i32 42, i8 16, i32 60, i8 12 }, %struct.as3722_register_mapping { i8 2, ptr @.str.13, ptr @.str.14, i8 2, i8 127, i32 128, i32 77, i8 4, i32 44, i8 4, i32 60, i8 48 }, %struct.as3722_register_mapping { i8 3, ptr @.str.15, ptr @.str.16, i8 3, i8 127, i32 128, i32 77, i8 8, i32 44, i8 64, i32 60, i8 -64 }, %struct.as3722_register_mapping { i8 4, ptr @.str.17, ptr @.str.18, i8 4, i8 127, i32 128, i32 77, i8 16, i32 45, i8 4, i32 61, i8 3 }, %struct.as3722_register_mapping { i8 5, ptr @.str.19, ptr @.str.20, i8 5, i8 127, i32 128, i32 77, i8 32, i32 46, i8 4, i32 61, i8 12 }, %struct.as3722_register_mapping { i8 6, ptr @.str.21, ptr null, i8 6, i8 127, i32 0, i32 77, i8 64, i32 47, i8 16, i32 61, i8 48 }, %struct.as3722_register_mapping { i8 7, ptr @.str.22, ptr @.str.23, i8 16, i8 31, i32 18, i32 78, i8 1, i32 0, i8 0, i32 62, i8 3 }, %struct.as3722_register_mapping { i8 8, ptr @.str.24, ptr @.str.25, i8 17, i8 127, i32 128, i32 78, i8 2, i32 0, i8 0, i32 62, i8 12 }, %struct.as3722_register_mapping { i8 9, ptr @.str.26, ptr @.str.27, i8 18, i8 127, i32 128, i32 78, i8 4, i32 0, i8 0, i32 62, i8 48 }, %struct.as3722_register_mapping { i8 10, ptr @.str.28, ptr @.str.29, i8 19, i8 63, i32 45, i32 78, i8 8, i32 0, i8 0, i32 62, i8 -64 }, %struct.as3722_register_mapping { i8 11, ptr @.str.30, ptr @.str.29, i8 20, i8 127, i32 128, i32 78, i8 16, i32 0, i8 0, i32 63, i8 3 }, %struct.as3722_register_mapping { i8 12, ptr @.str.31, ptr @.str.27, i8 21, i8 127, i32 128, i32 78, i8 32, i32 0, i8 0, i32 63, i8 12 }, %struct.as3722_register_mapping { i8 13, ptr @.str.32, ptr @.str.25, i8 22, i8 127, i32 128, i32 78, i8 64, i32 0, i8 0, i32 63, i8 48 }, %struct.as3722_register_mapping { i8 14, ptr @.str.33, ptr @.str.27, i8 23, i8 127, i32 128, i32 78, i8 -128, i32 0, i8 0, i32 63, i8 -64 }, %struct.as3722_register_mapping { i8 15, ptr @.str.34, ptr @.str.35, i8 25, i8 127, i32 128, i32 79, i8 2, i32 0, i8 0, i32 64, i8 12 }, %struct.as3722_register_mapping { i8 16, ptr @.str.36, ptr @.str.35, i8 26, i8 127, i32 128, i32 79, i8 4, i32 0, i8 0, i32 64, i8 48 }, %struct.as3722_register_mapping { i8 17, ptr @.str.37, ptr @.str.38, i8 27, i8 127, i32 128, i32 79, i8 8, i32 0, i8 0, i32 64, i8 -64 }], align 4
@as3722_ldo0_extcntrl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_ldo0_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_ldo_current = internal constant [2 x i32] [i32 150000, i32 300000], align 4
@as3722_ldo3_extcntrl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr @as3722_ldo3_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_ldo3_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr @as3722_ldo3_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LDO3 tracking failed: %d\0A\00", align 1
@as3722_ldo6_extcntrl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_ldo6_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_ldo_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 825000, i32 1, i32 36, i32 25000 }, %struct.linear_range { i32 1725000, i32 64, i32 127, i32 25000 }], align 4
@as3722_sd016_extcntrl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_sd016_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_sd016_current = internal constant [3 x i32] [i32 2500000, i32 3000000, i32 3500000], align 4
@as3722_sd2345_extcntrl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_sd2345_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_sd2345_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 612500, i32 1, i32 64, i32 12500 }, %struct.linear_range { i32 1425000, i32 65, i32 112, i32 25000 }, %struct.linear_range { i32 2650000, i32 113, i32 127, i32 50000 }], align 4
@as3722_ldo_extcntrl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_regulator_matches = internal global [18 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.41, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.42, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.43, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.44, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.45, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.46, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.47, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.48, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.49, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.50, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.51, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.52, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.53, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.54, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.55, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.56, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.57, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.58, ptr null, ptr null, ptr null, ptr null }], align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"regulator %d register failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Regulator %d enable failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"AS3722 ext control failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Device is not having regulators node\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Parsing of regulator node failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ams,ext-control\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"ext-control have invalid option: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ams,enable-tracking\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"as3722-sd0\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"as3722-sd1\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"as3722-sd2\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"vsup-sd2\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"as3722-sd3\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"vsup-sd3\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"as3722-sd4\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"vsup-sd4\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"as3722-sd5\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"vsup-sd5\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"as3722-sd6\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"as3722-ldo0\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"vin-ldo0\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"as3722-ldo1\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"vin-ldo1-6\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"as3722-ldo2\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"vin-ldo2-5-7\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"as3722-ldo3\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"vin-ldo3-4\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"as3722-ldo4\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"as3722-ldo5\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"as3722-ldo6\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"as3722-ldo7\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"as3722-ldo9\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"vin-ldo9-10\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"as3722-ldo10\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"as3722-ldo11\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"vin-ldo11\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"sd4\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"sd5\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"sd6\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"ldo0\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"ldo7\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"ldo9\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"ldo10\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ldo11\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_as3722_regulator_driver_exit, ptr @__initcall__kmod_as3722_regulator__247_839_as3722_regulator_driver_init6, ptr @as3722_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @as3722_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3722_regulator_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @as3722_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3722_regulator_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 20, i1 false)
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 4616, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %248, label %13

13:                                               ; preds = %1
  store ptr %5, ptr %11, align 4
  %14 = getelementptr inbounds %struct.as3722_regulators, ptr %11, i32 0, i32 1
  store ptr %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @of_get_child_by_name(ptr noundef %18, ptr noundef nonnull @.str.5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #9
  br label %54

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %19, ptr %23, align 8
  %24 = tail call i32 @of_regulator_match(ptr noundef %5, ptr noundef nonnull %19, ptr noundef nonnull @as3722_regulator_matches, i32 noundef 18) #8
  tail call void @of_node_put(ptr noundef nonnull %19) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %24) #9
  br label %54

27:                                               ; preds = %51, %22
  %28 = phi i32 [ %52, %51 ], [ 0, %22 ]
  %29 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %28
  %30 = getelementptr [18 x %struct.of_regulator_match], ptr @as3722_regulator_matches, i32 0, i32 %28, i32 2
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %29, align 4
  %32 = getelementptr [18 x %struct.of_regulator_match], ptr @as3722_regulator_matches, i32 0, i32 %28, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ne ptr %31, null
  %35 = icmp ne ptr %33, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, ptr %3, align 4
  %42 = icmp ult i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %28, i32 2
  store i32 %41, ptr %44, align 4
  br label %46

45:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %41) #9
  br label %46

46:                                               ; preds = %45, %43, %37
  %47 = call ptr @of_find_property(ptr noundef nonnull %33, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %48 = icmp ne ptr %47, null
  %49 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %28, i32 1
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 4
  br label %51

51:                                               ; preds = %46, %27
  %52 = add nuw nsw i32 %28, 1
  %53 = icmp eq i32 %52, 18
  br i1 %53, label %56, label %27

54:                                               ; preds = %26, %21
  %55 = phi i32 [ -19, %21 ], [ %24, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %248

56:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store ptr %5, ptr %4, align 4
  %57 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %11, ptr %57, align 4
  %58 = getelementptr inbounds %struct.as3722, ptr %9, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 4
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  %62 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  %63 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 0, i32 14
  %64 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 0, i32 15
  %65 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 0, i32 16
  %66 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 0, i32 57
  %67 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 0, i32 24
  %68 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 0, i32 9
  %69 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 6, i32 30
  %70 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 6, i32 31
  %71 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 1, i32 30
  %72 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 1, i32 31
  %73 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 13, i32 2
  %74 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 57
  %75 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 39
  %76 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 40
  %77 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 41
  %78 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 42
  %79 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 20
  %80 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 22
  %81 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 24
  %82 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 9
  %83 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 30
  %84 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 13, i32 31
  %85 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 10, i32 2
  %86 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 10, i32 14
  %87 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 10, i32 15
  %88 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 10, i32 16
  %89 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 10, i32 57
  %90 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 10, i32 1
  %91 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 7, i32 2
  %92 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 14
  %93 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 15
  %94 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 16
  %95 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 57
  %96 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 24
  %97 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 9
  %98 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 30
  %99 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 7, i32 31
  br label %100

100:                                              ; preds = %245, %56
  %101 = phi i32 [ 0, %56 ], [ %246, %245 ]
  %102 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101
  %103 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %101
  %104 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101
  %105 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 1
  %106 = load ptr, ptr %105, align 4
  store ptr %106, ptr %102, align 4
  %107 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 1
  store ptr %108, ptr %109, align 4
  %110 = load i8, ptr %104, align 4
  %111 = zext i8 %110 to i32
  %112 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 6
  store i32 %111, ptr %112, align 4
  %113 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 8
  store i32 %114, ptr %115, align 4
  %116 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 12
  store i32 0, ptr %116, align 4
  %117 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 13
  store ptr null, ptr %117, align 4
  %118 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 34
  store i32 %119, ptr %120, align 4
  %121 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 7
  %122 = load i8, ptr %121, align 4
  %123 = zext i8 %122 to i32
  %124 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 35
  store i32 %123, ptr %124, align 4
  %125 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 3
  %126 = load i8, ptr %125, align 4
  %127 = zext i8 %126 to i32
  %128 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 27
  store i32 %127, ptr %128, align 4
  %129 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 4
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 28
  store i32 %131, ptr %132, align 4
  switch i32 %101, label %193 [
    i32 7, label %133
    i32 10, label %137
    i32 13, label %150
    i32 0, label %154
    i32 1, label %154
    i32 6, label %154
    i32 2, label %186
    i32 3, label %186
    i32 4, label %186
    i32 5, label %186
  ]

133:                                              ; preds = %100
  %134 = load i32, ptr %91, align 4
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, ptr @as3722_ldo0_ops, ptr @as3722_ldo0_extcntrl_ops
  store i32 825000, ptr %92, align 4
  store i32 25000, ptr %93, align 4
  store i32 1, ptr %94, align 4
  store i32 500, ptr %95, align 4
  store ptr @as3722_ldo_current, ptr %96, align 4
  store i32 2, ptr %97, align 4
  store i32 %127, ptr %98, align 4
  store i32 128, ptr %99, align 4
  br label %205

137:                                              ; preds = %100
  %138 = load i32, ptr %85, align 4
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, ptr @as3722_ldo3_ops, ptr @as3722_ldo3_extcntrl_ops
  store i32 620000, ptr %86, align 4
  store i32 20000, ptr %87, align 4
  store i32 1, ptr %88, align 4
  store i32 500, ptr %89, align 4
  %141 = load i8, ptr %90, align 4, !range !9
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %205, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr %14, align 4
  %145 = getelementptr inbounds %struct.as3722, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = call i32 @regmap_update_bits_base(ptr noundef %146, i32 noundef %127, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %205

149:                                              ; preds = %143
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %147) #9
  br label %248

150:                                              ; preds = %100
  %151 = load i32, ptr %73, align 4
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, ptr @as3722_ldo6_ops, ptr @as3722_ldo6_extcntrl_ops
  store i32 500, ptr %74, align 4
  store i32 22, ptr %75, align 4
  store i32 127, ptr %76, align 4
  store i32 63, ptr %77, align 4
  store i32 63, ptr %78, align 4
  store ptr @as3722_ldo_ranges, ptr %79, align 4
  store i32 3, ptr %80, align 4
  store ptr @as3722_ldo_current, ptr %81, align 4
  store i32 2, ptr %82, align 4
  store i32 %127, ptr %83, align 4
  store i32 128, ptr %84, align 4
  br label %205

154:                                              ; preds = %100, %100, %100
  %155 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %101, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, ptr @as3722_sd016_ops, ptr @as3722_sd016_extcntrl_ops
  %159 = icmp eq i32 %101, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %161 = load ptr, ptr %14, align 4
  %162 = getelementptr inbounds %struct.as3722, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 @regmap_read(ptr noundef %163, i32 noundef 167, ptr noundef nonnull %2) #8
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.40, i32 noundef 167, i32 noundef %164) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %173

168:                                              ; preds = %160
  %169 = load i32, ptr %2, align 4
  %170 = and i32 %169, 16
  %171 = icmp eq i32 %170, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  store i32 111, ptr %115, align 4
  store i32 410000, ptr %63, align 4
  store i32 10000, ptr %64, align 4
  store i32 1, ptr %65, align 4
  store i32 600, ptr %66, align 4
  store ptr @as3722_sd016_current, ptr %67, align 4
  store i32 3, ptr %68, align 4
  br label %180

173:                                              ; preds = %168, %166, %154
  store i32 91, ptr %115, align 4
  %174 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 14
  store i32 610000, ptr %174, align 4
  %175 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 15
  store i32 10000, ptr %175, align 4
  %176 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 16
  store i32 1, ptr %176, align 4
  %177 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 57
  store i32 600, ptr %177, align 4
  %178 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 24
  store ptr @as3722_sd016_current, ptr %178, align 4
  %179 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 9
  store i32 3, ptr %179, align 4
  br i1 %159, label %180, label %183

180:                                              ; preds = %173, %172
  %181 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 30
  store i32 90, ptr %181, align 4
  %182 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 31
  store i32 24, ptr %182, align 4
  br label %205

183:                                              ; preds = %173
  switch i32 %101, label %205 [
    i32 1, label %184
    i32 6, label %185
  ]

184:                                              ; preds = %183
  store i32 90, ptr %71, align 4
  store i32 96, ptr %72, align 4
  br label %205

185:                                              ; preds = %183
  store i32 91, ptr %69, align 4
  store i32 24, ptr %70, align 4
  br label %205

186:                                              ; preds = %100, %100, %100, %100
  %187 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %101, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, ptr @as3722_sd2345_ops, ptr @as3722_sd2345_extcntrl_ops
  %191 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 20
  store ptr @as3722_sd2345_ranges, ptr %191, align 4
  %192 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 22
  store i32 4, ptr %192, align 4
  br label %205

193:                                              ; preds = %100
  %194 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %101, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, ptr @as3722_ldo_ops, ptr @as3722_ldo_extcntrl_ops
  %198 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 57
  store i32 500, ptr %198, align 4
  %199 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 20
  store ptr @as3722_ldo_ranges, ptr %199, align 4
  %200 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 22
  store i32 3, ptr %200, align 4
  %201 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 24
  store ptr @as3722_ldo_current, ptr %201, align 4
  %202 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 9
  store i32 2, ptr %202, align 4
  %203 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 30
  store i32 %127, ptr %203, align 4
  %204 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 31
  store i32 128, ptr %204, align 4
  br label %205

205:                                              ; preds = %193, %186, %185, %184, %183, %180, %150, %143, %137, %133
  %206 = phi ptr [ %197, %193 ], [ %190, %186 ], [ %158, %180 ], [ %158, %184 ], [ %158, %185 ], [ %153, %150 ], [ %140, %143 ], [ %140, %137 ], [ %136, %133 ], [ %158, %183 ]
  %207 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 2, i32 %101, i32 10
  store ptr %206, ptr %207, align 4
  %208 = load ptr, ptr %103, align 4
  store ptr %208, ptr %61, align 4
  %209 = getelementptr [18 x %struct.of_regulator_match], ptr @as3722_regulator_matches, i32 0, i32 %101, i32 3
  %210 = load ptr, ptr %209, align 4
  store ptr %210, ptr %62, align 4
  %211 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef %102, ptr noundef nonnull %4) #8
  %212 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = ptrtoint ptr %211 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %101, i32 noundef %214) #9
  br label %248

215:                                              ; preds = %205
  %216 = getelementptr %struct.as3722_regulators, ptr %11, i32 0, i32 3, i32 %101, i32 2
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %245, label %219

219:                                              ; preds = %215
  %220 = call i32 @regulator_enable_regmap(ptr noundef %211) #8
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %101, i32 noundef %220) #9
  br label %248

223:                                              ; preds = %219
  %224 = load i32, ptr %216, align 4
  %225 = add i32 %224, -4
  %226 = icmp ult i32 %225, -3
  br i1 %226, label %243, label %227

227:                                              ; preds = %223
  %228 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 11
  %229 = load i8, ptr %228, align 4
  %230 = zext i8 %229 to i32
  %231 = call i32 @llvm.cttz.i32(i32 %230, i1 true) #8, !range !10
  %232 = shl i32 %224, %231
  %233 = load ptr, ptr %14, align 4
  %234 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %101, i32 10
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.as3722, ptr %233, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = and i32 %232, 255
  %239 = call i32 @regmap_update_bits_base(ptr noundef %237, i32 noundef %235, i32 noundef %230, i32 noundef %238, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %227
  %242 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.39, i32 noundef %235, i32 noundef %239) #9
  br label %243

243:                                              ; preds = %241, %223
  %244 = phi i32 [ %239, %241 ], [ -22, %223 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %244) #9
  br label %248

245:                                              ; preds = %227, %215
  %246 = add nuw nsw i32 %101, 1
  %247 = icmp eq i32 %246, 18
  br i1 %247, label %248, label %100

248:                                              ; preds = %245, %243, %222, %213, %149, %54, %1
  %249 = phi i32 [ -12, %1 ], [ %55, %54 ], [ %147, %149 ], [ %244, %243 ], [ %220, %222 ], [ %214, %213 ], [ 0, %245 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %249
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @as3722_ldo3_get_current_limit(ptr nocapture noundef readnone %0) #6 {
  ret i32 150000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_sd_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.as3722_regulators, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %7 = and i32 %6, 255
  %8 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %7, i32 8
  %9 = add nsw i32 %7, -7
  %10 = icmp ult i32 %9, 11
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  switch i32 %1, label %30 [
    i32 1, label %16
    i32 2, label %12
  ]

12:                                               ; preds = %11
  %13 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %7, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  br label %20

16:                                               ; preds = %11
  %17 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %7, i32 9
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  %22 = phi i32 [ 0, %12 ], [ %19, %16 ]
  %23 = load i32, ptr %8, align 4
  %24 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %23, i32 noundef %21, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.39, i32 noundef %23, i32 noundef %26) #9
  br label %30

30:                                               ; preds = %28, %20, %11, %2
  %31 = phi i32 [ %26, %28 ], [ -34, %2 ], [ -22, %11 ], [ %26, %20 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_sd_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.as3722_regulators, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = and i32 %6, 1073741823
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 11
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %6, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %12, ptr noundef nonnull %2) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.40, i32 noundef %12, i32 noundef %15) #9
  br label %27

19:                                               ; preds = %10
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %6, i32 9
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 2, i32 1
  br label %27

27:                                               ; preds = %19, %17, %1
  %28 = phi i32 [ %15, %17 ], [ -524, %1 ], [ %26, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
