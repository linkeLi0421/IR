; ModuleID = '/llk/IR/drivers/regulator/tps65090-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65090-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.tps65090_regulator_plat_data = type { ptr, i8, ptr, i8, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tps65090_platform_data = type { i32, ptr, i32, i32, [12 x ptr] }
%struct.tps65090 = type { ptr, ptr, ptr }
%struct.tps65090_regulator = type { ptr, ptr, ptr, i8, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_tps65090_regulator__247_522_tps65090_regulator_init4 = internal global ptr @tps65090_regulator_init, section ".initcall4.init", align 4
@tps65090_regulator_driver = internal global %struct.platform_driver { ptr @tps65090_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps65090_regulator_exit = internal global ptr @tps65090_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [57 x i8] c"tps65090_regulator.description=tps65090 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [67 x i8] c"tps65090_regulator.author=Venu Byravarasu <vbyravarasu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"tps65090_regulator.file=drivers/regulator/tps65090-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [34 x i8] c"tps65090_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [48 x i8] c"tps65090_regulator.alias=platform:tps65090-pmic\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"tps65090-pmic\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Platform data missing\0A\00", align 1
@tps65090_regulator_desc = internal global [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @tps65090_reg_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @tps65090_reg_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @tps65090_reg_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr @.str.33, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.37, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.39, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr @.str.41, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr @.str.43, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 21, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @tps65090_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr @.str.47, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @tps65090_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@tps65090_ext_control_ops = internal constant %struct.regulator_ops zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed disable ext control\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@tps65090_matches = internal global [12 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.12, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.16, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.17, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.18, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.19, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.21, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.22, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.23, ptr null, ptr null, ptr null, ptr null }], align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ti,enable-ext-control\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"dcdc-ext-control\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"tps65090\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"could not find DCDC external control GPIO\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ti,overcurrent-wait\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"dcdc1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dcdc2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"dcdc3\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fet1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"fet2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"fet3\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fet4\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"fet5\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"fet6\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"fet7\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"TPS65090_RAILSDCDC1\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"vsys1\00", align 1
@tps65090_reg_control_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"TPS65090_RAILSDCDC2\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"vsys2\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"TPS65090_RAILSDCDC3\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"vsys3\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET1\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"infet1\00", align 1
@tps65090_fet_control_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65090_fet_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET2\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"infet2\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET3\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"infet3\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET4\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"infet4\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET5\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"infet5\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET6\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"infet6\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSFET7\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"infet7\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSLDO1\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"vsys-l1\00", align 1
@tps65090_ldo_ops = internal constant %struct.regulator_ops zeroinitializer, align 4
@.str.46 = private unnamed_addr constant [19 x i8] c"TPS65090_RAILSLDO2\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"vsys-l2\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"reg %#x enable ok after %d tries\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"reg %#x enable failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"drivers/regulator/tps65090-regulator.c\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Error in updating reg %#x\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Error in set reg 0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Error updating overcurrent wait %#x\0A\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"Error in updating reg 0x%x\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tps65090_regulator_exit, ptr @__initcall__kmod_tps65090_regulator__247_522_tps65090_regulator_init4, ptr @tps65090_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65090_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65090_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65090_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65090_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %75

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %74, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %16
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 240, i32 noundef 3520) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @of_get_child_by_name(ptr noundef %18, ptr noundef nonnull @.str.4) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %72

28:                                               ; preds = %24
  %29 = tail call i32 @of_regulator_match(ptr noundef %3, ptr noundef nonnull %25, ptr noundef nonnull @tps65090_matches, i32 noundef 12) #6
  tail call void @of_node_put(ptr noundef nonnull %25) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %29) #7
  %32 = inttoptr i32 %29 to ptr
  br label %75

33:                                               ; preds = %69, %28
  %34 = phi i32 [ %70, %69 ], [ 0, %28 ]
  %35 = getelementptr %struct.tps65090_regulator_plat_data, ptr %22, i32 %34
  %36 = getelementptr [12 x %struct.of_regulator_match], ptr @tps65090_matches, i32 0, i32 %34, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %33
  %40 = getelementptr [12 x %struct.of_regulator_match], ptr @tps65090_matches, i32 0, i32 %34, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %39
  store ptr %37, ptr %35, align 4
  %44 = tail call ptr @of_find_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %45 = icmp ne ptr %44, null
  %46 = getelementptr %struct.tps65090_regulator_plat_data, ptr %22, i32 %34, i32 1
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 4
  br i1 %45, label %48, label %61

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.regulator_init_data, ptr %37, i32 0, i32 1, i32 28
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 3
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, i32 19, i32 23
  %54 = getelementptr inbounds %struct.device_node, ptr %41, i32 0, i32 3
  %55 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef %54, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %53, ptr noundef nonnull @.str.9) #6
  %56 = getelementptr %struct.tps65090_regulator_plat_data, ptr %22, i32 %34, i32 2
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, inttoptr (i32 -2 to ptr)
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  store ptr null, ptr %56, align 4
  br label %61

59:                                               ; preds = %48
  %60 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %75, label %61

61:                                               ; preds = %59, %58, %43
  %62 = getelementptr %struct.tps65090_regulator_plat_data, ptr %22, i32 %34, i32 4
  %63 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %41, ptr noundef nonnull @.str.11, ptr noundef %62, i32 noundef 1, i32 noundef 0) #6
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr %struct.tps65090_regulator_plat_data, ptr %22, i32 %34, i32 3
  store i8 1, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr %struct.tps65090_platform_data, ptr %19, i32 0, i32 4, i32 %34
  store ptr %35, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %39, %33
  %70 = add nuw nsw i32 %34, 1
  %71 = icmp eq i32 %70, 12
  br i1 %71, label %75, label %33

72:                                               ; preds = %27, %21, %16
  %73 = phi ptr [ inttoptr (i32 -19 to ptr), %27 ], [ inttoptr (i32 -12 to ptr), %16 ], [ inttoptr (i32 -12 to ptr), %21 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %83

74:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %244

75:                                               ; preds = %69, %59, %31, %1
  %76 = phi i1 [ true, %31 ], [ true, %1 ], [ false, %59 ], [ false, %69 ]
  %77 = phi ptr [ null, %31 ], [ null, %1 ], [ @tps65090_matches, %59 ], [ @tps65090_matches, %69 ]
  %78 = phi ptr [ %32, %31 ], [ %9, %1 ], [ %19, %69 ], [ %55, %59 ]
  %79 = icmp eq ptr %78, null
  %80 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br i1 %79, label %244, label %83

83:                                               ; preds = %82, %72
  %84 = phi ptr [ %78, %82 ], [ %73, %72 ]
  %85 = ptrtoint ptr %84 to i32
  br label %244

86:                                               ; preds = %75
  %87 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 240, i32 noundef 3520) #6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %244, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %91 = getelementptr inbounds %struct.tps65090, ptr %7, i32 0, i32 1
  %92 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %93 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 5
  %94 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %95 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  br label %96

96:                                               ; preds = %239, %89
  %97 = phi i32 [ 0, %89 ], [ %240, %239 ]
  %98 = getelementptr %struct.tps65090_platform_data, ptr %78, i32 0, i32 4, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97
  store ptr %3, ptr %100, align 4
  %101 = getelementptr [12 x %struct.regulator_desc], ptr @tps65090_regulator_desc, i32 0, i32 %97
  %102 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97, i32 1
  store ptr %101, ptr %102, align 4
  %103 = icmp eq ptr %99, null
  br i1 %103, label %170, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %99, i32 0, i32 3
  %106 = load i8, ptr %105, align 4, !range !8
  %107 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97, i32 3
  store i8 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %99, i32 0, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97, i32 4
  store i32 %109, ptr %110, align 4
  %111 = icmp ult i32 %97, 3
  br i1 %111, label %112, label %165

112:                                              ; preds = %104
  %113 = load ptr, ptr %99, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %163, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %99, i32 0, i32 1
  %117 = load i8, ptr %116, align 4, !range !8
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %99, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  store ptr %121, ptr %93, align 4
  %122 = getelementptr [12 x %struct.regulator_desc], ptr @tps65090_regulator_desc, i32 0, i32 %97, i32 10
  store ptr @tps65090_ext_control_ops, ptr %122, align 4
  %123 = load ptr, ptr %4, align 4
  store ptr %123, ptr %2, align 4
  br label %167

124:                                              ; preds = %115
  %125 = getelementptr [12 x %struct.regulator_desc], ptr @tps65090_regulator_desc, i32 0, i32 %97, i32 34
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.regulator_init_data, ptr %113, i32 0, i32 1, i32 28
  %128 = load i16, ptr %127, align 4
  %129 = and i16 %128, 3
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %4, align 4
  %133 = getelementptr inbounds %struct.device, ptr %132, i32 0, i32 8
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.tps65090, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 @regmap_update_bits_base(ptr noundef %136, i32 noundef %126, i32 noundef 1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %131
  %140 = load ptr, ptr %102, align 4
  %141 = getelementptr inbounds %struct.regulator_desc, ptr %140, i32 0, i32 34
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %100, align 4
  br label %146

144:                                              ; preds = %131
  %145 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.52, i32 noundef %126) #7
  br label %159

146:                                              ; preds = %139, %124
  %147 = phi ptr [ %143, %139 ], [ %3, %124 ]
  %148 = phi i32 [ %142, %139 ], [ %126, %124 ]
  %149 = getelementptr inbounds %struct.device, ptr %147, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 8
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.tps65090, ptr %152, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef %148, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.54, i32 noundef %148) #7
  br label %159

159:                                              ; preds = %157, %144
  %160 = phi i32 [ %155, %157 ], [ %137, %144 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %244

161:                                              ; preds = %146
  %162 = load ptr, ptr %4, align 4
  store ptr %162, ptr %2, align 4
  br label %167

163:                                              ; preds = %112
  %164 = load ptr, ptr %4, align 4
  store ptr %164, ptr %2, align 4
  br label %167

165:                                              ; preds = %104
  %166 = load ptr, ptr %4, align 4
  store ptr %166, ptr %2, align 4
  br label %167

167:                                              ; preds = %165, %163, %161, %119
  store ptr %100, ptr %90, align 4
  %168 = load ptr, ptr %91, align 4
  store ptr %168, ptr %92, align 4
  %169 = load ptr, ptr %99, align 4
  br label %173

170:                                              ; preds = %96
  %171 = load ptr, ptr %4, align 4
  store ptr %171, ptr %2, align 4
  store ptr %100, ptr %90, align 4
  %172 = load ptr, ptr %91, align 4
  store ptr %172, ptr %92, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi ptr [ %169, %167 ], [ null, %170 ]
  store ptr %174, ptr %94, align 4
  br i1 %76, label %178, label %175

175:                                              ; preds = %173
  %176 = getelementptr %struct.of_regulator_match, ptr %77, i32 %97, i32 3
  %177 = load ptr, ptr %176, align 4
  br label %178

178:                                              ; preds = %175, %173
  %179 = phi ptr [ %177, %175 ], [ null, %173 ]
  store ptr %179, ptr %95, align 4
  %180 = load ptr, ptr %93, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call void @devm_gpiod_unhinge(ptr noundef %3, ptr noundef nonnull %180) #6
  br label %183

183:                                              ; preds = %182, %178
  %184 = load ptr, ptr %102, align 4
  %185 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %184, ptr noundef nonnull %2) #6
  %186 = icmp ugt ptr %185, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load ptr, ptr %102, align 4
  %189 = load ptr, ptr %188, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %189) #7
  %190 = ptrtoint ptr %185 to i32
  br label %244

191:                                              ; preds = %183
  %192 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97, i32 2
  store ptr %185, ptr %192, align 4
  %193 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97, i32 3
  %194 = load i8, ptr %193, align 4, !range !8
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %213, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.regulator_dev, ptr %185, i32 0, i32 17
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %185, align 8
  %200 = getelementptr inbounds %struct.regulator_desc, ptr %199, i32 0, i32 34
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr %struct.tps65090_regulator, ptr %87, i32 %97, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = shl i32 %203, 2
  %205 = call i32 @regmap_update_bits_base(ptr noundef %198, i32 noundef %201, i32 noundef 12, i32 noundef %204, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.regulator_dev, ptr %185, i32 0, i32 13
  %209 = load ptr, ptr %185, align 8
  %210 = getelementptr inbounds %struct.regulator_desc, ptr %209, i32 0, i32 34
  %211 = load i32, ptr %210, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.53, i32 noundef %211) #7
  %212 = icmp slt i32 %205, 0
  br i1 %212, label %244, label %213

213:                                              ; preds = %207, %196, %191
  %214 = xor i1 %103, true
  %215 = icmp ult i32 %97, 3
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %217, label %239

217:                                              ; preds = %213
  %218 = load ptr, ptr %99, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %239, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %99, i32 0, i32 1
  %222 = load i8, ptr %221, align 4, !range !8
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %239, label %224

224:                                              ; preds = %220
  %225 = load ptr, ptr %100, align 4
  %226 = getelementptr inbounds %struct.device, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = load ptr, ptr %102, align 4
  %229 = getelementptr inbounds %struct.regulator_desc, ptr %228, i32 0, i32 34
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds %struct.device, ptr %227, i32 0, i32 8
  %232 = load ptr, ptr %231, align 8
  %233 = getelementptr inbounds %struct.tps65090, ptr %232, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = call i32 @regmap_update_bits_base(ptr noundef %234, i32 noundef %230, i32 noundef 2, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %224
  %238 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull @.str.54, i32 noundef %230) #7
  br label %244

239:                                              ; preds = %224, %220, %217, %213
  %240 = add nuw nsw i32 %97, 1
  %241 = icmp eq i32 %240, 12
  br i1 %241, label %242, label %96

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %87, ptr %243, align 8
  br label %244

244:                                              ; preds = %242, %237, %207, %187, %159, %86, %83, %82, %74
  %245 = phi i32 [ %190, %187 ], [ %160, %159 ], [ 0, %242 ], [ %85, %83 ], [ -22, %82 ], [ -12, %86 ], [ -22, %74 ], [ %235, %237 ], [ %205, %207 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %245
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
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_fet_enable(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  br label %5

5:                                                ; preds = %94, %1
  %6 = phi i32 [ 0, %1 ], [ %95, %94 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 34
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 35
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %10, i32 noundef %12, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, ptr %17, i32 0, i32 34
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %16, i32 noundef %19, ptr noundef nonnull %2) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %80, label %26

22:                                               ; preds = %5
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 34
  %25 = load i32, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.51, i32 noundef %25) #7
  br label %80

26:                                               ; preds = %15
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %26
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.regulator_desc, ptr %32, i32 0, i32 34
  %34 = load i32, ptr %33, align 4
  %35 = call i32 @regmap_read(ptr noundef %31, i32 noundef %34, ptr noundef nonnull %2) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %2, align 4
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %37
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %42 = load ptr, ptr %3, align 4
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %struct.regulator_desc, ptr %43, i32 0, i32 34
  %45 = load i32, ptr %44, align 4
  %46 = call i32 @regmap_read(ptr noundef %42, i32 noundef %45, ptr noundef nonnull %2) #6
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %41
  %49 = load i32, ptr %2, align 4
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %53 = load ptr, ptr %3, align 4
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %struct.regulator_desc, ptr %54, i32 0, i32 34
  %56 = load i32, ptr %55, align 4
  %57 = call i32 @regmap_read(ptr noundef %53, i32 noundef %56, ptr noundef nonnull %2) #6
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %2, align 4
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %64 = load ptr, ptr %3, align 4
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.regulator_desc, ptr %65, i32 0, i32 34
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @regmap_read(ptr noundef %64, i32 noundef %67, ptr noundef nonnull %2) #6
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load i32, ptr %2, align 4
  %72 = and i32 %71, 128
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #6
  %75 = load i32, ptr %2, align 4
  br label %76

76:                                               ; preds = %74, %70, %59, %48, %37, %26
  %77 = phi i32 [ %75, %74 ], [ %71, %70 ], [ %60, %59 ], [ %49, %48 ], [ %38, %37 ], [ %27, %26 ]
  %78 = and i32 %77, 16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76, %63, %52, %41, %30, %22, %15
  %81 = phi i32 [ %68, %63 ], [ %57, %52 ], [ %46, %41 ], [ %35, %30 ], [ %20, %15 ], [ %13, %22 ], [ -131, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %82 = icmp ne i32 %81, -131
  %83 = icmp eq i32 %6, 1000
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %102, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %3, align 4
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr inbounds %struct.regulator_desc, ptr %87, i32 0, i32 34
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.regulator_desc, ptr %87, i32 0, i32 35
  %91 = load i32, ptr %90, align 4
  %92 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef %89, i32 noundef %91, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %85
  %95 = add nuw nsw i32 %6, 1
  br label %5

96:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %97 = icmp eq i32 %6, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %0, align 8
  %100 = getelementptr inbounds %struct.regulator_desc, ptr %99, i32 0, i32 34
  %101 = load i32, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.48, i32 noundef %101, i32 noundef %6) #7
  br label %107

102:                                              ; preds = %85, %80
  %103 = phi i32 [ %81, %80 ], [ %92, %85 ]
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr inbounds %struct.regulator_desc, ptr %104, i32 0, i32 34
  %106 = load i32, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %106) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 165, i32 noundef 9, ptr noundef null) #6
  br label %107

107:                                              ; preds = %102, %98, %96
  %108 = phi i32 [ %103, %102 ], [ 0, %98 ], [ 0, %96 ]
  ret i32 %108
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
