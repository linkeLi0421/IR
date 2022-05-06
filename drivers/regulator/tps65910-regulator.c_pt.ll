; ModuleID = '/llk/IR/drivers/regulator/tps65910-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65910-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tps_info = type { ptr, ptr, i8, ptr, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.tps65910_board = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.tps65910_sleep_keepon_data, [9 x i8], [14 x i32], [14 x ptr] }
%struct.tps65910_sleep_keepon_data = type { i8, [3 x i8] }
%struct.tps65910_reg = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [14 x i32] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_tps65910_regulator__249_1267_tps65910_init4 = internal global ptr @tps65910_init, section ".initcall4.init", align 4
@tps65910_driver = internal global %struct.platform_driver { ptr @tps65910_probe, ptr null, ptr @tps65910_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps65910_cleanup = internal global ptr @tps65910_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [62 x i8] c"tps65910_regulator.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [74 x i8] c"tps65910_regulator.description=TPS65910/TPS65911 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [61 x i8] c"tps65910_regulator.file=drivers/regulator/tps65910-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [34 x i8] c"tps65910_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [48 x i8] c"tps65910_regulator.alias=platform:tps65910-pmic\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"tps65910-pmic\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Platform data not found\0A\00", align 1
@tps65910_ext_sleep_control = internal global [13 x i32] [i32 0, i32 256, i32 257, i32 258, i32 259, i32 1, i32 2, i32 6, i32 7, i32 3, i32 4, i32 5, i32 0], align 4
@tps65910_regs = internal global [14 x %struct.tps_info] [%struct.tps_info { ptr @.str.9, ptr @.str.32, i8 1, ptr @VRTC_VSEL_table, i32 2200 }, %struct.tps_info { ptr @.str.10, ptr @.str.33, i8 4, ptr @VIO_VSEL_table, i32 350 }, %struct.tps_info { ptr @.str.11, ptr @.str.34, i8 0, ptr null, i32 350 }, %struct.tps_info { ptr @.str.12, ptr @.str.35, i8 0, ptr null, i32 350 }, %struct.tps_info { ptr @.str.13, ptr null, i8 1, ptr @VDD3_VSEL_table, i32 200 }, %struct.tps_info { ptr @.str.14, ptr @.str.36, i8 4, ptr @VDIG1_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.15, ptr @.str.36, i8 4, ptr @VDIG2_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.16, ptr @.str.37, i8 4, ptr @VPLL_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.17, ptr @.str.37, i8 4, ptr @VDAC_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.18, ptr @.str.38, i8 4, ptr @VAUX1_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.19, ptr @.str.38, i8 4, ptr @VAUX2_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.20, ptr @.str.39, i8 4, ptr @VAUX33_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.21, ptr @.str.39, i8 4, ptr @VMMC_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.22, ptr @.str.32, i8 4, ptr @VBB_VSEL_table, i32 0 }], align 4
@tps65911_ext_sleep_control = internal global [13 x i32] [i32 0, i32 256, i32 257, i32 258, i32 259, i32 1, i32 2, i32 7, i32 6, i32 3, i32 0, i32 5, i32 4], align 4
@tps65911_regs = internal global [13 x %struct.tps_info] [%struct.tps_info { ptr @.str.9, ptr @.str.32, i8 0, ptr null, i32 2200 }, %struct.tps_info { ptr @.str.10, ptr @.str.33, i8 4, ptr @VIO_VSEL_table, i32 350 }, %struct.tps_info { ptr @.str.11, ptr @.str.34, i8 76, ptr null, i32 350 }, %struct.tps_info { ptr @.str.12, ptr @.str.35, i8 76, ptr null, i32 350 }, %struct.tps_info { ptr @.str.23, ptr null, i8 68, ptr null, i32 900 }, %struct.tps_info { ptr @.str.24, ptr @.str.36, i8 51, ptr null, i32 420 }, %struct.tps_info { ptr @.str.25, ptr @.str.36, i8 51, ptr null, i32 420 }, %struct.tps_info { ptr @.str.26, ptr @.str.37, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.27, ptr @.str.37, i8 51, ptr null, i32 230 }, %struct.tps_info { ptr @.str.28, ptr @.str.38, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.29, ptr @.str.39, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.30, ptr @.str.39, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.31, ptr @.str.39, i8 26, ptr null, i32 230 }], align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid tps chip version\0A\00", align 1
@tps65910_ops_dcdc = internal constant %struct.regulator_ops { ptr @tps65910_list_voltage_dcdc, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65910_set_voltage_dcdc_sel, ptr null, ptr @tps65910_get_voltage_dcdc_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65910_ops_vdd3 = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr null, ptr @tps65910_get_voltage_vdd3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65910_ops_vbb = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @tps65910_set_voltage_sel, ptr null, ptr @tps65910_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65910_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65910_set_voltage_sel, ptr null, ptr @tps65910_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65911_ops = internal constant %struct.regulator_ops { ptr @tps65911_list_voltage, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65911_set_voltage_sel, ptr null, ptr @tps65911_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to initialise ext control config\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@tps65910_matches = internal global [14 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.9, ptr @tps65910_regs, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr getelementptr (i8, ptr @tps65910_regs, i64 20), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr getelementptr (i8, ptr @tps65910_regs, i64 40), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr getelementptr (i8, ptr @tps65910_regs, i64 60), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr getelementptr (i8, ptr @tps65910_regs, i64 80), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr getelementptr (i8, ptr @tps65910_regs, i64 100), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr getelementptr (i8, ptr @tps65910_regs, i64 120), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.16, ptr getelementptr (i8, ptr @tps65910_regs, i64 140), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.17, ptr getelementptr (i8, ptr @tps65910_regs, i64 160), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.18, ptr getelementptr (i8, ptr @tps65910_regs, i64 180), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.19, ptr getelementptr (i8, ptr @tps65910_regs, i64 200), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.20, ptr getelementptr (i8, ptr @tps65910_regs, i64 220), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.21, ptr getelementptr (i8, ptr @tps65910_regs, i64 240), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.22, ptr getelementptr (i8, ptr @tps65910_regs, i64 260), ptr null, ptr null, ptr null }], align 4
@tps65911_matches = internal global [13 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.9, ptr @tps65911_regs, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr getelementptr (i8, ptr @tps65911_regs, i64 20), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr getelementptr (i8, ptr @tps65911_regs, i64 40), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr getelementptr (i8, ptr @tps65911_regs, i64 60), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.23, ptr getelementptr (i8, ptr @tps65911_regs, i64 80), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.24, ptr getelementptr (i8, ptr @tps65911_regs, i64 100), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr getelementptr (i8, ptr @tps65911_regs, i64 120), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr getelementptr (i8, ptr @tps65911_regs, i64 140), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr getelementptr (i8, ptr @tps65911_regs, i64 160), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr getelementptr (i8, ptr @tps65911_regs, i64 180), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr getelementptr (i8, ptr @tps65911_regs, i64 200), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr getelementptr (i8, ptr @tps65911_regs, i64 220), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr getelementptr (i8, ptr @tps65911_regs, i64 240), ptr null, ptr null, ptr null }], align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ti,regulator-ext-sleep-control\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vrtc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vdd1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vdd2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"vdig1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"vdig2\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"vpll\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"vdac\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"vaux1\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"vaux2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"vaux33\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"vmmc\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"vbb\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"vddctrl\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ldo7\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"ldo8\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"vcc7\00", align 1
@VRTC_VSEL_table = internal constant [1 x i32] [i32 1800000], align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"vccio\00", align 1
@VIO_VSEL_table = internal constant [4 x i32] [i32 1500000, i32 1800000, i32 2500000, i32 3300000], align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"vcc1\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"vcc2\00", align 1
@VDD3_VSEL_table = internal constant [1 x i32] [i32 5000000], align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"vcc6\00", align 1
@VDIG1_VSEL_table = internal constant [4 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2700000], align 4
@VDIG2_VSEL_table = internal constant [4 x i32] [i32 1000000, i32 1100000, i32 1200000, i32 1800000], align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"vcc5\00", align 1
@VPLL_VSEL_table = internal constant [4 x i32] [i32 1000000, i32 1100000, i32 1800000, i32 2500000], align 4
@VDAC_VSEL_table = internal constant [4 x i32] [i32 1800000, i32 2600000, i32 2800000, i32 2850000], align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"vcc4\00", align 1
@VAUX1_VSEL_table = internal constant [4 x i32] [i32 1800000, i32 2500000, i32 2800000, i32 2850000], align 4
@VAUX2_VSEL_table = internal constant [4 x i32] [i32 1800000, i32 2800000, i32 2900000, i32 3300000], align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"vcc3\00", align 1
@VAUX33_VSEL_table = internal constant [4 x i32] [i32 1800000, i32 2000000, i32 2800000, i32 3300000], align 4
@VMMC_VSEL_table = internal constant [4 x i32] [i32 1800000, i32 2800000, i32 3000000, i32 3300000], align 4
@VBB_VSEL_table = internal constant [4 x i32] [i32 3000000, i32 2520000, i32 3150000, i32 5000000], align 4
@.str.40 = private unnamed_addr constant [43 x i8] c"External sleep control flag is not proper\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"Error in configuring external control EN1\0A\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"Error in configuring external control EN2\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Error in configuring external control EN3\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Error in configuring SLEEP register\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Error in configuring op register\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"Error in setting sr register\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Error in clearing external control\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_tps65910_cleanup, ptr @__initcall__kmod_tps65910_regulator__249_1267_tps65910_init4, ptr @tps65910_cleanup], section "llvm.metadata"
@switch.table.tps65910_get_ctrl_register = private unnamed_addr constant [14 x i32] [i32 30, i32 32, i32 33, i32 36, i32 39, i32 48, i32 49, i32 54, i32 55, i32 50, i32 51, i32 52, i32 53, i32 57], align 4
@switch.table.tps65911_get_ctrl_register = private unnamed_addr constant [13 x i32] [i32 30, i32 32, i32 33, i32 36, i32 39, i32 48, i32 49, i32 55, i32 54, i32 50, i32 53, i32 52, i32 51], align 4
@switch.table.tps65910_set_voltage_sel.48 = private unnamed_addr constant [13 x i32] [i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 6], align 4
@switch.table.tps65911_set_voltage_sel = private unnamed_addr constant [13 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], align 4
@switch.table.tps65911_set_voltage_sel.49 = private unnamed_addr constant [13 x i32] [i32 12, i32 252, i32 252, i32 252, i32 252, i32 252, i32 124, i32 252, i32 124, i32 124, i32 124, i32 124, i32 6], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65910_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65910_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65910_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65910_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_config, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %58

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 152, i32 noundef 3520) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call ptr @of_get_child_by_name(ptr noundef %23, ptr noundef nonnull @.str.5) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  br label %55

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tps65910, ptr %8, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %31 [
    i32 0, label %32
    i32 1, label %30
  ]

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  tail call void @of_node_put(ptr noundef nonnull %24) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  br label %55

32:                                               ; preds = %30, %27
  %33 = phi ptr [ @tps65911_matches, %30 ], [ @tps65910_matches, %27 ]
  %34 = phi i32 [ 13, %30 ], [ 14, %27 ]
  %35 = tail call i32 @of_regulator_match(ptr noundef %4, ptr noundef nonnull %24, ptr noundef nonnull %33, i32 noundef %34) #9
  tail call void @of_node_put(ptr noundef nonnull %24) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %35) #10
  br label %55

38:                                               ; preds = %52, %32
  %39 = phi i32 [ %53, %52 ], [ 0, %32 ]
  %40 = getelementptr %struct.of_regulator_match, ptr %33, i32 %39, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr %struct.of_regulator_match, ptr %33, i32 %39, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr %struct.tps65910_board, ptr %18, i32 0, i32 12, i32 %39
  store ptr %45, ptr %46, align 4
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %41, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, ptr %2, align 4
  %51 = getelementptr %struct.tps65910_board, ptr %18, i32 0, i32 11, i32 %39
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %43, %38
  %53 = add nuw nsw i32 %39, 1
  %54 = icmp eq i32 %53, %34
  br i1 %54, label %56, label %38

55:                                               ; preds = %37, %31, %26, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %57

56:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %58

57:                                               ; preds = %55, %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #10
  br label %241

58:                                               ; preds = %56, %1
  %59 = phi ptr [ %18, %56 ], [ %11, %1 ]
  %60 = phi ptr [ %33, %56 ], [ null, %1 ]
  %61 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 88, i32 noundef 3520) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %241, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 1
  store ptr %8, ptr %64, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %61, ptr %65, align 8
  %66 = getelementptr inbounds %struct.tps65910, ptr %8, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 63, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %241, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.tps65910, ptr %8, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %86 [
    i32 0, label %73
    i32 1, label %82
  ]

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 6
  store ptr @tps65910_get_ctrl_register, ptr %74, align 4
  %75 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 4
  store i32 14, ptr %75, align 4
  %76 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 7
  store ptr @tps65910_ext_sleep_control, ptr %76, align 4
  %77 = load ptr, ptr %64, align 4
  %78 = getelementptr inbounds %struct.tps65910, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 62, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %81 = load i32, ptr %75, align 4
  br label %87

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 6
  store ptr @tps65911_get_ctrl_register, ptr %83, align 4
  %84 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 4
  store i32 13, ptr %84, align 4
  %85 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 7
  store ptr @tps65911_ext_sleep_control, ptr %85, align 4
  br label %87

86:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  br label %241

87:                                               ; preds = %82, %73
  %88 = phi i32 [ 13, %82 ], [ %81, %73 ]
  %89 = phi ptr [ @tps65911_regs, %82 ], [ @tps65910_regs, %73 ]
  %90 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 4
  %91 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 244) #9
  %92 = extractvalue { i32, i1 } %91, 1
  br i1 %92, label %93, label %94, !prof !9

93:                                               ; preds = %87
  store ptr null, ptr %61, align 4
  br label %241

94:                                               ; preds = %87
  %95 = extractvalue { i32, i1 } %91, 0
  %96 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %95, i32 noundef 3520) #9
  store ptr %96, ptr %61, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %241, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %90, align 4
  %100 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %99, i32 4) #9
  %101 = extractvalue { i32, i1 } %100, 1
  br i1 %101, label %102, label %104, !prof !9

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 3
  store ptr null, ptr %103, align 4
  br label %241

104:                                              ; preds = %98
  %105 = extractvalue { i32, i1 } %100, 0
  %106 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %105, i32 noundef 3520) #9
  %107 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 3
  store ptr %106, ptr %107, align 4
  %108 = icmp eq ptr %106, null
  br i1 %108, label %241, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %90, align 4
  %111 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %110, i32 4) #9
  %112 = extractvalue { i32, i1 } %111, 1
  br i1 %112, label %113, label %115, !prof !9

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 2
  store ptr null, ptr %114, align 4
  br label %241

115:                                              ; preds = %109
  %116 = extractvalue { i32, i1 } %111, 0
  %117 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %116, i32 noundef 3520) #9
  %118 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 2
  store ptr %117, ptr %118, align 4
  %119 = icmp eq ptr %117, null
  br i1 %119, label %241, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %90, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %241

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.tps65910_reg, ptr %61, i32 0, i32 6
  %125 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 1
  %126 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 2
  %127 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 4
  %128 = icmp eq ptr %60, null
  %129 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 3
  br label %130

130:                                              ; preds = %234, %123
  %131 = phi i32 [ 0, %123 ], [ %237, %234 ]
  %132 = phi ptr [ %89, %123 ], [ %238, %234 ]
  %133 = load ptr, ptr %107, align 4
  %134 = getelementptr ptr, ptr %133, i32 %131
  store ptr %132, ptr %134, align 4
  %135 = load ptr, ptr %132, align 4
  %136 = load ptr, ptr %61, align 4
  %137 = getelementptr %struct.regulator_desc, ptr %136, i32 %131
  store ptr %135, ptr %137, align 4
  %138 = getelementptr inbounds %struct.tps_info, ptr %132, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %61, align 4
  %141 = getelementptr %struct.regulator_desc, ptr %140, i32 %131, i32 1
  store ptr %139, ptr %141, align 4
  %142 = load ptr, ptr %61, align 4
  %143 = getelementptr %struct.regulator_desc, ptr %142, i32 %131, i32 6
  store i32 %131, ptr %143, align 4
  %144 = getelementptr inbounds %struct.tps_info, ptr %132, i32 0, i32 2
  %145 = load i8, ptr %144, align 4
  %146 = zext i8 %145 to i32
  %147 = load ptr, ptr %61, align 4
  %148 = getelementptr %struct.regulator_desc, ptr %147, i32 %131, i32 8
  store i32 %146, ptr %148, align 4
  %149 = getelementptr inbounds %struct.tps_info, ptr %132, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr %61, align 4
  %152 = getelementptr %struct.regulator_desc, ptr %151, i32 %131, i32 57
  store i32 %150, ptr %152, align 4
  %153 = and i32 %131, 2147483646
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %162

155:                                              ; preds = %130
  %156 = load ptr, ptr %61, align 4
  %157 = getelementptr %struct.regulator_desc, ptr %156, i32 %131, i32 10
  store ptr @tps65910_ops_dcdc, ptr %157, align 4
  %158 = load ptr, ptr %61, align 4
  %159 = getelementptr %struct.regulator_desc, ptr %158, i32 %131, i32 8
  store i32 219, ptr %159, align 4
  %160 = load ptr, ptr %61, align 4
  %161 = getelementptr %struct.regulator_desc, ptr %160, i32 %131, i32 18
  store i32 12500, ptr %161, align 4
  br label %199

162:                                              ; preds = %130
  switch i32 %131, label %186 [
    i32 4, label %163
    i32 13, label %176
  ]

163:                                              ; preds = %162
  %164 = load i32, ptr %71, align 4
  %165 = icmp eq i32 %164, 0
  %166 = load ptr, ptr %61, align 4
  %167 = getelementptr %struct.regulator_desc, ptr %166, i32 4, i32 10
  br i1 %165, label %168, label %173

168:                                              ; preds = %163
  store ptr @tps65910_ops_vdd3, ptr %167, align 4
  %169 = getelementptr inbounds %struct.tps_info, ptr %132, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %61, align 4
  %172 = getelementptr %struct.regulator_desc, ptr %171, i32 4, i32 23
  store ptr %170, ptr %172, align 4
  br label %199

173:                                              ; preds = %163
  store ptr @tps65910_ops_dcdc, ptr %167, align 4
  %174 = load ptr, ptr %61, align 4
  %175 = getelementptr %struct.regulator_desc, ptr %174, i32 4, i32 18
  store i32 5000, ptr %175, align 4
  br label %199

176:                                              ; preds = %162
  %177 = load i32, ptr %71, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  %180 = load ptr, ptr %61, align 4
  %181 = getelementptr %struct.regulator_desc, ptr %180, i32 13, i32 10
  store ptr @tps65910_ops_vbb, ptr %181, align 4
  %182 = getelementptr inbounds %struct.tps_info, ptr %132, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = load ptr, ptr %61, align 4
  %185 = getelementptr %struct.regulator_desc, ptr %184, i32 13, i32 23
  store ptr %183, ptr %185, align 4
  br label %199

186:                                              ; preds = %162
  %187 = load i32, ptr %71, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load ptr, ptr %61, align 4
  %191 = getelementptr %struct.regulator_desc, ptr %190, i32 %131, i32 10
  store ptr @tps65910_ops, ptr %191, align 4
  %192 = getelementptr inbounds %struct.tps_info, ptr %132, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %61, align 4
  %195 = getelementptr %struct.regulator_desc, ptr %194, i32 %131, i32 23
  store ptr %193, ptr %195, align 4
  br label %199

196:                                              ; preds = %186, %176
  %197 = load ptr, ptr %61, align 4
  %198 = getelementptr %struct.regulator_desc, ptr %197, i32 %131, i32 10
  store ptr @tps65911_ops, ptr %198, align 4
  br label %199

199:                                              ; preds = %196, %189, %179, %173, %168, %155
  %200 = getelementptr %struct.tps65910_board, ptr %59, i32 0, i32 11, i32 %131
  %201 = load i32, ptr %200, align 4
  %202 = call fastcc i32 @tps65910_set_ext_sleep_config(ptr noundef nonnull %61, i32 noundef %131, i32 noundef %201)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %205, ptr noundef nonnull @.str.3) #10
  br label %206

206:                                              ; preds = %204, %199
  %207 = load ptr, ptr %61, align 4
  %208 = getelementptr %struct.regulator_desc, ptr %207, i32 %131, i32 12
  store i32 0, ptr %208, align 4
  %209 = load ptr, ptr %61, align 4
  %210 = getelementptr %struct.regulator_desc, ptr %209, i32 %131, i32 13
  store ptr null, ptr %210, align 4
  %211 = load ptr, ptr %124, align 4
  %212 = call i32 %211(i32 noundef %131) #9
  %213 = load ptr, ptr %61, align 4
  %214 = getelementptr %struct.regulator_desc, ptr %213, i32 %131, i32 34
  store i32 %212, ptr %214, align 4
  %215 = load ptr, ptr %61, align 4
  %216 = getelementptr %struct.regulator_desc, ptr %215, i32 %131, i32 35
  store i32 1, ptr %216, align 4
  %217 = load ptr, ptr %8, align 4
  store ptr %217, ptr %3, align 4
  %218 = getelementptr %struct.tps65910_board, ptr %59, i32 0, i32 12, i32 %131
  %219 = load ptr, ptr %218, align 4
  store ptr %219, ptr %125, align 4
  store ptr %61, ptr %126, align 4
  %220 = load ptr, ptr %66, align 4
  store ptr %220, ptr %127, align 4
  br i1 %128, label %224, label %221

221:                                              ; preds = %206
  %222 = getelementptr %struct.of_regulator_match, ptr %60, i32 %131, i32 3
  %223 = load ptr, ptr %222, align 4
  store ptr %223, ptr %129, align 4
  br label %224

224:                                              ; preds = %221, %206
  %225 = load ptr, ptr %61, align 4
  %226 = getelementptr %struct.regulator_desc, ptr %225, i32 %131
  %227 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %226, ptr noundef nonnull %3) #9
  %228 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load ptr, ptr %8, align 4
  %231 = ptrtoint ptr %227 to i32
  %232 = load ptr, ptr %0, align 8
  %233 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %230, i32 noundef %231, ptr noundef nonnull @.str.4, ptr noundef %232) #9
  br label %241

234:                                              ; preds = %224
  %235 = load ptr, ptr %118, align 4
  %236 = getelementptr ptr, ptr %235, i32 %131
  store ptr %227, ptr %236, align 4
  %237 = add nuw nsw i32 %131, 1
  %238 = getelementptr %struct.tps_info, ptr %132, i32 1
  %239 = load i32, ptr %90, align 4
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %130, label %241

241:                                              ; preds = %234, %229, %120, %115, %113, %104, %102, %94, %93, %86, %63, %58, %57
  %242 = phi i32 [ -19, %86 ], [ %233, %229 ], [ -22, %57 ], [ -12, %58 ], [ %68, %63 ], [ -12, %94 ], [ -12, %104 ], [ -12, %115 ], [ -12, %93 ], [ -12, %102 ], [ -12, %113 ], [ 0, %120 ], [ 0, %234 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps65910_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @tps65910_set_ext_sleep_config(ptr noundef %3, i32 noundef %11, i32 noundef 0)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.47) #10
  br label %20

20:                                               ; preds = %19, %16, %10
  %21 = add nuw nsw i32 %11, 1
  %22 = load i32, ptr %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %10, label %24

24:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tps65910_get_ctrl_register(i32 noundef %0) #6 {
  %2 = icmp ult i32 %0, 14
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [14 x i32], ptr @switch.table.tps65910_get_ctrl_register, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tps65911_get_ctrl_register(i32 noundef %0) #6 {
  %2 = icmp ult i32 %0, 13
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_get_ctrl_register, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tps65910_set_ext_sleep_config(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tps65910_reg, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i32, ptr %9, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 8
  %13 = shl nuw i32 1, %11
  %14 = and i32 %2, 15
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, 1
  br i1 %15, label %30, label %17

17:                                               ; preds = %3
  %18 = lshr i32 %2, 1
  %19 = and i32 %18, 1
  %20 = add nuw nsw i32 %19, %16
  %21 = lshr i32 %2, 2
  %22 = and i32 %21, 1
  %23 = add nuw nsw i32 %20, %22
  %24 = lshr i32 %2, 3
  %25 = and i32 %24, 1
  %26 = add nuw nsw i32 %23, %25
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.40) #10
  br label %158

30:                                               ; preds = %17, %3
  %31 = getelementptr %struct.tps65910_reg, ptr %0, i32 0, i32 8, i32 %1
  store i32 %2, ptr %31, align 4
  %32 = icmp eq i32 %16, 0
  %33 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = and i32 %12, 255
  %36 = add nuw nsw i32 %35, 69
  %37 = and i32 %13, 255
  %38 = select i1 %32, i32 0, i32 %37
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.41) #10
  br label %158

43:                                               ; preds = %30
  %44 = and i32 %2, 2
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = and i32 %12, 255
  %49 = add nuw nsw i32 %48, 71
  %50 = and i32 %13, 255
  %51 = select i1 %45, i32 0, i32 %50
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %49, i32 noundef %50, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.42) #10
  br label %158

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = icmp sgt i32 %1, 4
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = and i32 %2, 4
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = and i32 %12, 255
  %68 = add nuw nsw i32 %67, 73
  %69 = and i32 %13, 255
  %70 = select i1 %64, i32 0, i32 %69
  %71 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %68, i32 noundef %69, i32 noundef %70, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.43) #10
  br label %158

75:                                               ; preds = %62, %56
  br i1 %15, label %76, label %93

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = and i32 %12, 255
  %80 = add nuw nsw i32 %79, 65
  %81 = and i32 %13, 255
  %82 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef %80, i32 noundef %81, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load ptr, ptr %77, align 4
  %86 = add nuw nsw i32 %79, 67
  %87 = tail call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef %86, i32 noundef %81, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %88

88:                                               ; preds = %84, %76
  %89 = phi i32 [ %82, %76 ], [ %87, %84 ]
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %158

91:                                               ; preds = %88
  %92 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.44) #10
  br label %158

93:                                               ; preds = %75
  %94 = and i32 %1, -2
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = icmp eq i32 %1, 4
  br i1 %97, label %98, label %138

98:                                               ; preds = %96
  %99 = load i32, ptr %57, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %138

101:                                              ; preds = %98, %93
  %102 = getelementptr inbounds %struct.tps65910_reg, ptr %0, i32 0, i32 6
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %103(i32 noundef %1) #9
  %105 = add i32 %104, 1
  %106 = load ptr, ptr %102, align 4
  %107 = tail call i32 %106(i32 noundef %1) #9
  %108 = add i32 %107, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %109 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @regmap_read(ptr noundef %110, i32 noundef %105, ptr noundef nonnull %4) #9
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %101
  %114 = load ptr, ptr %109, align 4
  %115 = call i32 @regmap_read(ptr noundef %114, i32 noundef %108, ptr noundef nonnull %5) #9
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %4, align 4
  %119 = and i32 %118, 128
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %5, align 4
  %123 = and i32 %122, 127
  %124 = load ptr, ptr %109, align 4
  %125 = call i32 @regmap_write(ptr noundef %124, i32 noundef %105, i32 noundef %123) #9
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121, %117
  %128 = load ptr, ptr %109, align 4
  %129 = call i32 @regmap_write(ptr noundef %128, i32 noundef %108, i32 noundef 0) #9
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127, %121
  %132 = phi ptr [ @.str.45, %121 ], [ @.str.46, %127 ]
  %133 = phi i32 [ %125, %121 ], [ %129, %127 ]
  %134 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull %132) #10
  br label %135

135:                                              ; preds = %131, %113, %101
  %136 = phi i32 [ %115, %113 ], [ %111, %101 ], [ %133, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %158

137:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %138

138:                                              ; preds = %137, %98, %96
  %139 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = and i32 %12, 255
  %142 = add nuw nsw i32 %141, 65
  %143 = and i32 %13, 255
  %144 = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef %142, i32 noundef %143, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = and i32 %2, 8
  %148 = icmp eq i32 %147, 0
  %149 = load ptr, ptr %139, align 4
  %150 = add nuw nsw i32 %141, 67
  %151 = select i1 %148, i32 0, i32 %143
  %152 = call i32 @regmap_update_bits_base(ptr noundef %149, i32 noundef %150, i32 noundef %143, i32 noundef %151, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %153

153:                                              ; preds = %146, %138
  %154 = phi i32 [ %144, %138 ], [ %152, %146 ]
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.44) #10
  br label %158

158:                                              ; preds = %156, %153, %135, %91, %88, %73, %54, %41, %28
  %159 = phi i32 [ %39, %41 ], [ %52, %54 ], [ %71, %73 ], [ -22, %28 ], [ %89, %91 ], [ %89, %88 ], [ %154, %156 ], [ %154, %153 ], [ %136, %135 ]
  ret i32 %159
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_list_voltage_dcdc(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  switch i32 %3, label %9 [
    i32 2, label %4
    i32 3, label %4
    i32 4, label %10
  ]

4:                                                ; preds = %2, %2
  %5 = udiv i32 %1, 73
  %6 = add nuw nsw i32 %5, 1
  %7 = mul i32 %5, 73
  %8 = sub i32 %1, %7
  br label %10

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/tps65910-regulator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 715, 0\0A.popsection", ""() #9, !srcloc !10
  unreachable

10:                                               ; preds = %4, %2
  %11 = phi i32 [ %6, %4 ], [ 1, %2 ]
  %12 = phi i32 [ %8, %4 ], [ %1, %2 ]
  %13 = mul i32 %12, 12500
  %14 = add i32 %13, 600000
  %15 = mul i32 %14, %11
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_set_voltage_dcdc_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  switch i32 %4, label %29 [
    i32 2, label %5
    i32 3, label %15
    i32 4, label %26
  ]

5:                                                ; preds = %2
  %6 = udiv i32 %1, 73
  %7 = icmp ugt i32 %1, 72
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %6, %8
  %10 = urem i32 %1, 73
  %11 = add nuw nsw i32 %10, 3
  %12 = shl nuw i32 %9, 6
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 33, i32 noundef 192, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 34, i32 noundef %11) #9
  br label %29

15:                                               ; preds = %2
  %16 = udiv i32 %1, 73
  %17 = icmp ugt i32 %1, 72
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %16, %18
  %20 = mul i32 %16, 73
  %21 = sub i32 %1, %20
  %22 = add nuw nsw i32 %21, 3
  %23 = shl nuw i32 %19, 6
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 36, i32 noundef 192, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 37, i32 noundef %22) #9
  br label %29

26:                                               ; preds = %2
  %27 = add i32 %1, 3
  %28 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 40, i32 noundef %27) #9
  br label %29

29:                                               ; preds = %26, %15, %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_get_voltage_dcdc_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  switch i32 %6, label %55 [
    i32 2, label %7
    i32 3, label %22
    i32 4, label %37
  ]

7:                                                ; preds = %1
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef 34, ptr noundef nonnull %2) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %77, label %10

10:                                               ; preds = %7
  %11 = call i32 @regmap_read(ptr noundef %5, i32 noundef 33, ptr noundef nonnull %4) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4
  %15 = lshr i32 %14, 6
  %16 = and i32 %15, 3
  store i32 %16, ptr %4, align 4
  %17 = call i32 @regmap_read(ptr noundef %5, i32 noundef 35, ptr noundef nonnull %3) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 127
  store i32 %21, ptr %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = call i32 @regmap_read(ptr noundef %5, i32 noundef 37, ptr noundef nonnull %2) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %22
  %26 = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %4) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %77, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 4
  %30 = lshr i32 %29, 6
  %31 = and i32 %30, 3
  store i32 %31, ptr %4, align 4
  %32 = call i32 @regmap_read(ptr noundef %5, i32 noundef 38, ptr noundef nonnull %3) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %2, align 4
  %36 = and i32 %35, 127
  store i32 %36, ptr %2, align 4
  br label %46

37:                                               ; preds = %1
  %38 = call i32 @regmap_read(ptr noundef %5, i32 noundef 40, ptr noundef nonnull %2) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %37
  %41 = call i32 @regmap_read(ptr noundef %5, i32 noundef 41, ptr noundef nonnull %3) #9
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %2, align 4
  %45 = and i32 %44, 127
  store i32 %45, ptr %2, align 4
  br label %46

46:                                               ; preds = %43, %34, %19
  %47 = phi i32 [ %21, %19 ], [ %36, %34 ], [ %45, %43 ]
  %48 = phi i32 [ 75, %19 ], [ 75, %34 ], [ 64, %43 ]
  %49 = phi i32 [ %20, %19 ], [ %35, %34 ], [ %44, %43 ]
  %50 = load i32, ptr %3, align 4
  %51 = and i32 %50, 127
  %52 = and i32 %49, 128
  %53 = load i32, ptr %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46, %1
  %56 = phi i32 [ %47, %46 ], [ 0, %1 ]
  %57 = phi i32 [ %51, %46 ], [ 0, %1 ]
  %58 = phi i32 [ %52, %46 ], [ 0, %1 ]
  %59 = phi i32 [ %48, %46 ], [ 0, %1 ]
  store i32 1, ptr %4, align 4
  br label %60

60:                                               ; preds = %55, %46
  %61 = phi i32 [ %56, %55 ], [ %47, %46 ]
  %62 = phi i32 [ %57, %55 ], [ %51, %46 ]
  %63 = phi i32 [ %58, %55 ], [ %52, %46 ]
  %64 = phi i32 [ %59, %55 ], [ %48, %46 ]
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = icmp ult i32 %62, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  store i32 3, ptr %3, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ 3, %68 ], [ %62, %66 ]
  %71 = call i32 @llvm.umin.i32(i32 %70, i32 %64)
  %72 = add nsw i32 %71, -3
  br label %77

73:                                               ; preds = %60
  %74 = call i32 @llvm.umax.i32(i32 %61, i32 3)
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 %64)
  %76 = add nsw i32 %75, -3
  br label %77

77:                                               ; preds = %73, %69, %40, %37, %28, %25, %22, %13, %10, %7
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ], [ %8, %7 ], [ %11, %10 ], [ %17, %13 ], [ %23, %22 ], [ %26, %25 ], [ %32, %28 ], [ %38, %37 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(i32 noundef %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  switch i32 %1, label %17 [
    i32 2, label %11
    i32 4, label %13
    i32 8, label %15
  ]

11:                                               ; preds = %10
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %17

13:                                               ; preds = %10
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %8, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %17

15:                                               ; preds = %10
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %17

17:                                               ; preds = %15, %13, %11, %10, %2
  %18 = phi i32 [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %8, %2 ], [ -22, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(i32 noundef %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = and i32 %14, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 2, i32 4
  br label %21

21:                                               ; preds = %17, %13, %10, %1
  %22 = phi i32 [ %8, %1 ], [ %11, %10 ], [ 8, %13 ], [ %20, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @tps65910_get_voltage_vdd3(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(i32 noundef %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = add i32 %5, -1
  %12 = icmp ult i32 %11, 13
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = trunc i32 %11 to i16
  %15 = lshr i16 8177, %14
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_set_voltage_sel, i32 0, i32 %11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65910_set_voltage_sel.48, i32 0, i32 %11
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %1, %20
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %8, i32 noundef %22, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %25

25:                                               ; preds = %18, %13, %10, %2
  %26 = phi i32 [ %8, %2 ], [ -22, %10 ], [ %24, %18 ], [ -22, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(i32 noundef %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  switch i32 %5, label %23 [
    i32 1, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
    i32 8, label %14
    i32 9, label %14
    i32 10, label %14
    i32 11, label %14
    i32 12, label %14
    i32 13, label %17
  ]

14:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13
  %15 = load i32, ptr %2, align 4
  %16 = lshr i32 %15, 2
  br label %20

17:                                               ; preds = %13
  %18 = load i32, ptr %2, align 4
  %19 = lshr i32 %18, 1
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %19, %17 ], [ %16, %14 ]
  %22 = and i32 %21, 3
  br label %23

23:                                               ; preds = %20, %13, %10, %1
  %24 = phi i32 [ %22, %20 ], [ %8, %1 ], [ %11, %10 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65911_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  switch i32 %4, label %25 [
    i32 5, label %15
    i32 6, label %15
    i32 8, label %15
    i32 7, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 1, label %6
  ]

5:                                                ; preds = %2, %2, %2, %2, %2
  br label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tps_info, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i32, ptr %12, i32 %1
  %14 = load i32, ptr %13, align 4
  br label %25

15:                                               ; preds = %5, %2, %2, %2
  %16 = phi i32 [ 3, %5 ], [ 5, %2 ], [ 5, %2 ], [ 5, %2 ]
  %17 = phi i32 [ -2, %5 ], [ -4, %2 ], [ -4, %2 ], [ -4, %2 ]
  %18 = phi i32 [ 100, %5 ], [ 50, %2 ], [ 50, %2 ], [ 50, %2 ]
  %19 = icmp ugt i32 %16, %1
  %20 = add i32 %17, %1
  %21 = mul i32 %20, 1000
  %22 = select i1 %19, i32 0, i32 %21
  %23 = mul i32 %22, %18
  %24 = add i32 %23, 1000000
  br label %25

25:                                               ; preds = %15, %6, %2
  %26 = phi i32 [ %14, %6 ], [ %24, %15 ], [ -22, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65911_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(i32 noundef %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = add i32 %5, -1
  %12 = icmp ult i32 %11, 13
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = trunc i32 %11 to i16
  %15 = lshr i16 8177, %14
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_set_voltage_sel, i32 0, i32 %11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_set_voltage_sel.49, i32 0, i32 %11
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %1, %20
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %8, i32 noundef %22, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %25

25:                                               ; preds = %18, %13, %10, %2
  %26 = phi i32 [ %8, %2 ], [ -22, %10 ], [ %24, %18 ], [ -22, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65911_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = tail call ptr @rdev_get_regmap(ptr noundef %0) #9
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.tps65910_reg, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(i32 noundef %5) #9
  %9 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  switch i32 %5, label %24 [
    i32 5, label %12
    i32 6, label %12
    i32 8, label %12
    i32 7, label %16
    i32 9, label %16
    i32 10, label %16
    i32 11, label %16
    i32 12, label %16
    i32 1, label %20
  ]

12:                                               ; preds = %11, %11, %11
  %13 = load i32, ptr %2, align 4
  %14 = lshr i32 %13, 2
  %15 = and i32 %14, 63
  br label %24

16:                                               ; preds = %11, %11, %11, %11, %11
  %17 = load i32, ptr %2, align 4
  %18 = lshr i32 %17, 2
  %19 = and i32 %18, 31
  br label %24

20:                                               ; preds = %11
  %21 = load i32, ptr %2, align 4
  %22 = lshr i32 %21, 2
  %23 = and i32 %22, 3
  br label %24

24:                                               ; preds = %20, %16, %12, %11, %1
  %25 = phi i32 [ %9, %1 ], [ -22, %11 ], [ %23, %20 ], [ %19, %16 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153806691, i64 2153807194, i64 2153806728, i64 2153806784, i64 2153806818, i64 2153806842, i64 2153806883, i64 2153806904, i64 2153806932, i64 2153806966}
