; ModuleID = '/llk/IR/drivers/regulator/stpmic1_regulator.c_pt.bc'
source_filename = "../drivers/regulator/stpmic1_regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.stpmic1_regulator_cfg = type { %struct.regulator_desc, i8, i8, i8, i8 }
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
%struct.stpmic1 = type { ptr, ptr, i32, ptr }

@__initcall__kmod_stpmic1_regulator__247_646_stpmic1_regulator_driver_init6 = internal global ptr @stpmic1_regulator_driver_init, section ".initcall6.init", align 4
@stpmic1_regulator_driver = internal global %struct.platform_driver { ptr @stpmic1_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pmic_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stpmic1_regulator_driver_exit = internal global ptr @stpmic1_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [68 x i8] c"stpmic1_regulator.description=STPMIC1 PMIC voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [59 x i8] c"stpmic1_regulator.author=Pascal Paillet <p.paillet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [59 x i8] c"stpmic1_regulator.file=drivers/regulator/stpmic1_regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [33 x i8] c"stpmic1_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"stpmic1-regulator\00", align 1
@of_pmic_regulator_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stpmic1-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stpmic1_matches = internal global [14 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.2, ptr null, ptr null, ptr null, ptr @stpmic1_regulator_cfgs }, %struct.of_regulator_match { ptr @.str.3, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 248) }, %struct.of_regulator_match { ptr @.str.4, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 496) }, %struct.of_regulator_match { ptr @.str.5, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 744) }, %struct.of_regulator_match { ptr @.str.6, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 992) }, %struct.of_regulator_match { ptr @.str.7, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1240) }, %struct.of_regulator_match { ptr @.str.8, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1488) }, %struct.of_regulator_match { ptr @.str.9, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1736) }, %struct.of_regulator_match { ptr @.str.10, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1984) }, %struct.of_regulator_match { ptr @.str.11, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2232) }, %struct.of_regulator_match { ptr @.str.12, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2480) }, %struct.of_regulator_match { ptr @.str.13, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2728) }, %struct.of_regulator_match { ptr @.str.14, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2976) }, %struct.of_regulator_match { ptr @.str.15, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 3224) }], align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error in PMIC regulator device tree node\00", align 1
@stpmic1_regulator_cfgs = internal constant [14 x %struct.stpmic1_regulator_cfg] [%struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.20, ptr @.str.2, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck1_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 1, i8 29, i8 1 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.21, ptr @.str.3, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck2_ranges, ptr null, i32 11, ptr null, ptr null, i32 0, i32 0, i32 33, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 2, i8 29, i8 2 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.22, ptr @.str.4, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck3_ranges, ptr null, i32 7, ptr null, ptr null, i32 0, i32 0, i32 34, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 4, i8 29, i8 4 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.23, ptr @.str.5, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck4_ranges, ptr null, i32 7, ptr null, ptr null, i32 0, i32 0, i32 35, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 8, i8 29, i8 8 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.24, ptr @.str.6, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo1_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 37, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 1, i8 30, i8 1 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.25, ptr @.str.7, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo2_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 38, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 2, i8 30, i8 2 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.26, ptr @.str.8, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @stpmic1_ldo3_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo3_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 39, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 1, i32 0, i8 0, i32 39, i32 128, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 4, i8 30, i8 4 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.27, ptr @.str.9, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @stpmic1_ldo4_fixed_regul_ops, i32 0, i32 0, ptr null, i32 3300000, i32 0, i32 0, i32 3300000, i32 2200, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 8, i8 30, i8 8 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.28, ptr @.str.10, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo5_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 41, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 16, i8 30, i8 16 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.29, ptr @.str.11, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 42, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 32, i8 30, i8 32 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.30, ptr @.str.12, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @stpmic1_vref_ddr_ops, i32 0, i32 0, ptr null, i32 500000, i32 0, i32 0, i32 500000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 64, i8 0, i8 0 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.31, ptr @.str.13, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @stpmic1_boost_regul_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 29, i8 64 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.32, ptr @.str.14, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 1, i32 0, ptr @stpmic1_switch_regul_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 16, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 29, i8 16 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.33, ptr @.str.15, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 1, i32 0, ptr @stpmic1_switch_regul_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 4, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 32, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 29, i8 32 }], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"buck1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"buck2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"buck3\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"buck4\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"vref_ddr\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pwr_sw1\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"pwr_sw2\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"st,mask-reset\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"set mask reset failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Request IRQ failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@stpmic1_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @stpmic1_set_mode, ptr @stpmic1_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_pull_down_regmap }, align 4
@buck1_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 725000, i32 0, i32 4, i32 0 }, %struct.linear_range { i32 725000, i32 5, i32 36, i32 25000 }, %struct.linear_range { i32 1500000, i32 37, i32 63, i32 0 }], align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@buck2_ranges = internal constant [11 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 17, i32 0 }, %struct.linear_range { i32 1050000, i32 18, i32 19, i32 0 }, %struct.linear_range { i32 1100000, i32 20, i32 21, i32 0 }, %struct.linear_range { i32 1150000, i32 22, i32 23, i32 0 }, %struct.linear_range { i32 1200000, i32 24, i32 25, i32 0 }, %struct.linear_range { i32 1250000, i32 26, i32 27, i32 0 }, %struct.linear_range { i32 1300000, i32 28, i32 29, i32 0 }, %struct.linear_range { i32 1350000, i32 30, i32 31, i32 0 }, %struct.linear_range { i32 1400000, i32 32, i32 33, i32 0 }, %struct.linear_range { i32 1450000, i32 34, i32 35, i32 0 }, %struct.linear_range { i32 1500000, i32 36, i32 63, i32 0 }], align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@buck3_ranges = internal constant [7 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 19, i32 0 }, %struct.linear_range { i32 1100000, i32 20, i32 23, i32 0 }, %struct.linear_range { i32 1200000, i32 24, i32 27, i32 0 }, %struct.linear_range { i32 1300000, i32 28, i32 31, i32 0 }, %struct.linear_range { i32 1400000, i32 32, i32 35, i32 0 }, %struct.linear_range { i32 1500000, i32 36, i32 55, i32 100000 }, %struct.linear_range { i32 3400000, i32 56, i32 63, i32 0 }], align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@buck4_ranges = internal constant [7 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 27, i32 25000 }, %struct.linear_range { i32 1300000, i32 28, i32 29, i32 0 }, %struct.linear_range { i32 1350000, i32 30, i32 31, i32 0 }, %struct.linear_range { i32 1400000, i32 32, i32 33, i32 0 }, %struct.linear_range { i32 1450000, i32 34, i32 35, i32 0 }, %struct.linear_range { i32 1500000, i32 36, i32 60, i32 100000 }, %struct.linear_range { i32 3900000, i32 61, i32 63, i32 0 }], align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@stpmic1_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ldo1_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 31, i32 0 }], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@ldo2_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 30, i32 0 }], align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@stpmic1_ldo3_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ldo3_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 30, i32 0 }, %struct.linear_range { i32 500000, i32 31, i32 31, i32 0 }], align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@stpmic1_ldo4_fixed_regul_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@ldo5_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 30, i32 100000 }, %struct.linear_range { i32 3900000, i32 31, i32 31, i32 0 }], align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@ldo6_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 31, i32 0 }], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"VREF_DDR\00", align 1
@stpmic1_vref_ddr_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"BOOST\00", align 1
@stpmic1_boost_regul_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"VBUS_OTG\00", align 1
@stpmic1_switch_regul_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"SW_OUT\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_stpmic1_regulator_driver_exit, ptr @__initcall__kmod_stpmic1_regulator__247_646_stpmic1_regulator_driver_init6, ptr @stpmic1_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stpmic1_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stpmic1_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stpmic1_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stpmic1_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_regulator_match(ptr noundef %3, ptr noundef %5, ptr noundef nonnull @stpmic1_matches, i32 noundef 14) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = getelementptr inbounds i8, ptr %2, i32 20
  %11 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %13 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  br label %16

15:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %67

16:                                               ; preds = %64, %8
  %17 = phi i32 [ 0, %8 ], [ %65, %64 ]
  %18 = getelementptr [14 x %struct.stpmic1_regulator_cfg], ptr @stpmic1_regulator_cfgs, i32 0, i32 %17
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store i32 0, ptr %10, align 4
  store ptr %3, ptr %2, align 4
  %22 = getelementptr [14 x %struct.of_regulator_match], ptr @stpmic1_matches, i32 0, i32 %17, i32 2
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %11, align 4
  %24 = getelementptr [14 x %struct.of_regulator_match], ptr @stpmic1_matches, i32 0, i32 %17, i32 3
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %12, align 4
  %26 = getelementptr inbounds %struct.stpmic1, ptr %21, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %13, align 4
  store ptr %18, ptr %14, align 4
  %28 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %18, ptr noundef nonnull %2) #6
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef %31) #7
  %32 = ptrtoint ptr %28 to i32
  br label %61

33:                                               ; preds = %16
  %34 = load ptr, ptr %12, align 4
  %35 = call ptr @of_get_property(ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %36 = icmp eq ptr %35, null
  %37 = add nsw i32 %17, -11
  %38 = icmp ult i32 %37, 3
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = getelementptr [14 x %struct.stpmic1_regulator_cfg], ptr @stpmic1_regulator_cfgs, i32 0, i32 %17, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = load ptr, ptr %26, align 4
  %45 = getelementptr [14 x %struct.stpmic1_regulator_cfg], ptr @stpmic1_regulator_cfgs, i32 0, i32 %17, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %43, i32 noundef %47, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #7
  br label %61

51:                                               ; preds = %40, %33
  %52 = load ptr, ptr %12, align 4
  %53 = call i32 @of_irq_get(ptr noundef %52, i32 noundef 0) #6
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load ptr, ptr %0, align 8
  %57 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %53, ptr noundef null, ptr noundef nonnull @stpmic1_curlim_irq_handler, i32 noundef 8320, ptr noundef %56, ptr noundef %28) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #7
  br label %61

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br label %64

61:                                               ; preds = %59, %50, %30
  %62 = phi i32 [ %32, %30 ], [ %48, %50 ], [ %57, %59 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %60
  %65 = add nuw nsw i32 %17, 1
  %66 = icmp eq i32 %65, 14
  br i1 %66, label %67, label %16

67:                                               ; preds = %64, %61, %15
  %68 = phi i32 [ %6, %15 ], [ 0, %64 ], [ %62, %61 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_curlim_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @regulator_notifier_call_chain(ptr noundef %1, i32 noundef 2, ptr noundef null) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stpmic1_map_mode(i32 noundef %0) #5 {
  %2 = icmp eq i32 %0, 2
  %3 = select i1 %2, i32 8, i32 0
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 2, i32 %3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_set_icc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %6 = tail call ptr @rdev_get_regmap(ptr noundef %0) #6
  %7 = or i32 %2, %1
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %8, %3
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stpmic1_regulator_cfg, ptr %5, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.stpmic1_regulator_cfg, ptr %5, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %13, i32 noundef %16, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %17, %10 ], [ -22, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_regmap(ptr noundef %0) #6
  switch i32 %1, label %11 [
    i32 2, label %5
    i32 8, label %4
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ 2, %4 ], [ 0, %2 ]
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %7, i32 0, i32 34
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %9, i32 noundef 2, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi i32 [ %10, %5 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @rdev_get_regmap(ptr noundef %0) #6
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 34
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %2) #6
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 2, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_pull_down_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_active_discharge_regmap(ptr noundef, i1 noundef zeroext) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
