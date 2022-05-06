; ModuleID = '/llk/IR/drivers/mfd/rk808.c_pt.bc'
source_filename = "../drivers/mfd/rk808.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.rk808_reg_data = type { i32, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_rk808__247_813_rk808_i2c_driver_init6 = internal global ptr @rk808_i2c_driver_init, section ".initcall6.init", align 4
@rk808_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @rk808_probe, ptr @rk808_remove, ptr null, ptr @rk8xx_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk808_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk8xx_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_rk808_i2c_driver_exit = internal global ptr @rk808_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [29 x i8] c"rk808.file=drivers/mfd/rk808\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [18 x i8] c"rk808.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [46 x i8] c"rk808.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [51 x i8] c"rk808.author=Zhang Qing <zhangqing@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [47 x i8] c"rk808.author=Wadim Egorov <w.egorov@phytec.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [42 x i8] c"rk808.description=RK808/RK818 PMIC driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [6 x i8] c"rk808\00", align 1
@rk808_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk808\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk809\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk817\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@rk8xx_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rk8xx_suspend, ptr @rk8xx_resume, ptr @rk8xx_suspend, ptr @rk8xx_resume, ptr @rk8xx_suspend, ptr @rk8xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"rockchip,rk817\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rockchip,rk809\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to read the chip id at 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"chip id: 0x%x\0A\00", align 1
@rk805_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk808_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 175, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@rk805_pre_init_reg = internal unnamed_addr constant [6 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 46, i32 192, i32 3 }, %struct.rk808_reg_data { i32 50, i32 192, i32 3 }, %struct.rk808_reg_data { i32 54, i32 24, i32 3 }, %struct.rk808_reg_data { i32 55, i32 24, i32 3 }, %struct.rk808_reg_data { i32 55, i32 7, i32 7 }, %struct.rk808_reg_data { i32 34, i32 12, i32 12 }], align 4
@rk805s = internal constant [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @rk805_key_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@rk808_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk808_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@rk808_pre_init_reg = internal unnamed_addr constant [7 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 54, i32 7, i32 2 }, %struct.rk808_reg_data { i32 55, i32 7, i32 3 }, %struct.rk808_reg_data { i32 58, i32 7, i32 1 }, %struct.rk808_reg_data { i32 46, i32 24, i32 3 }, %struct.rk808_reg_data { i32 50, i32 24, i32 3 }, %struct.rk808_reg_data { i32 40, i32 15, i32 0 }, %struct.rk808_reg_data { i32 33, i32 255, i32 23 }], align 4
@rk808s = internal constant [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@rk818_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk808_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 161, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@rk818_pre_init_reg = internal unnamed_addr constant [8 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 50, i32 24, i32 4 }, %struct.rk808_reg_data { i32 55, i32 7, i32 4 }, %struct.rk808_reg_data { i32 58, i32 7, i32 1 }, %struct.rk808_reg_data { i32 161, i32 15, i32 7 }, %struct.rk808_reg_data { i32 161, i32 112, i32 112 }, %struct.rk808_reg_data { i32 82, i32 2, i32 2 }, %struct.rk808_reg_data { i32 82, i32 1, i32 1 }, %struct.rk808_reg_data { i32 33, i32 255, i32 23 }], align 4
@rk818s = internal constant [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@rk817_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk817_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 254, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@rk817_pre_init_reg = internal unnamed_addr constant [77 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 13, i32 1, i32 1 }, %struct.rk808_reg_data { i32 18, i32 255, i32 3 }, %struct.rk808_reg_data { i32 19, i32 255, i32 0 }, %struct.rk808_reg_data { i32 20, i32 255, i32 0 }, %struct.rk808_reg_data { i32 21, i32 255, i32 0 }, %struct.rk808_reg_data { i32 22, i32 255, i32 0 }, %struct.rk808_reg_data { i32 23, i32 255, i32 6 }, %struct.rk808_reg_data { i32 24, i32 255, i32 200 }, %struct.rk808_reg_data { i32 25, i32 255, i32 0 }, %struct.rk808_reg_data { i32 26, i32 255, i32 0 }, %struct.rk808_reg_data { i32 27, i32 255, i32 0 }, %struct.rk808_reg_data { i32 30, i32 255, i32 0 }, %struct.rk808_reg_data { i32 31, i32 255, i32 0 }, %struct.rk808_reg_data { i32 32, i32 255, i32 0 }, %struct.rk808_reg_data { i32 33, i32 255, i32 0 }, %struct.rk808_reg_data { i32 34, i32 255, i32 0 }, %struct.rk808_reg_data { i32 35, i32 255, i32 255 }, %struct.rk808_reg_data { i32 36, i32 255, i32 255 }, %struct.rk808_reg_data { i32 39, i32 255, i32 112 }, %struct.rk808_reg_data { i32 40, i32 255, i32 0 }, %struct.rk808_reg_data { i32 41, i32 255, i32 102 }, %struct.rk808_reg_data { i32 42, i32 255, i32 0 }, %struct.rk808_reg_data { i32 43, i32 255, i32 0 }, %struct.rk808_reg_data { i32 44, i32 255, i32 0 }, %struct.rk808_reg_data { i32 45, i32 255, i32 0 }, %struct.rk808_reg_data { i32 46, i32 255, i32 0 }, %struct.rk808_reg_data { i32 47, i32 255, i32 7 }, %struct.rk808_reg_data { i32 48, i32 255, i32 130 }, %struct.rk808_reg_data { i32 49, i32 255, i32 0 }, %struct.rk808_reg_data { i32 50, i32 255, i32 0 }, %struct.rk808_reg_data { i32 53, i32 255, i32 0 }, %struct.rk808_reg_data { i32 54, i32 255, i32 0 }, %struct.rk808_reg_data { i32 55, i32 255, i32 0 }, %struct.rk808_reg_data { i32 56, i32 255, i32 160 }, %struct.rk808_reg_data { i32 57, i32 255, i32 255 }, %struct.rk808_reg_data { i32 36, i32 255, i32 255 }, %struct.rk808_reg_data { i32 39, i32 255, i32 112 }, %struct.rk808_reg_data { i32 40, i32 255, i32 0 }, %struct.rk808_reg_data { i32 41, i32 255, i32 102 }, %struct.rk808_reg_data { i32 42, i32 255, i32 0 }, %struct.rk808_reg_data { i32 43, i32 255, i32 0 }, %struct.rk808_reg_data { i32 44, i32 255, i32 0 }, %struct.rk808_reg_data { i32 45, i32 255, i32 0 }, %struct.rk808_reg_data { i32 46, i32 255, i32 0 }, %struct.rk808_reg_data { i32 47, i32 255, i32 7 }, %struct.rk808_reg_data { i32 48, i32 255, i32 130 }, %struct.rk808_reg_data { i32 49, i32 255, i32 0 }, %struct.rk808_reg_data { i32 50, i32 255, i32 0 }, %struct.rk808_reg_data { i32 53, i32 255, i32 0 }, %struct.rk808_reg_data { i32 54, i32 255, i32 0 }, %struct.rk808_reg_data { i32 55, i32 255, i32 0 }, %struct.rk808_reg_data { i32 56, i32 255, i32 160 }, %struct.rk808_reg_data { i32 57, i32 255, i32 255 }, %struct.rk808_reg_data { i32 58, i32 255, i32 255 }, %struct.rk808_reg_data { i32 59, i32 255, i32 0 }, %struct.rk808_reg_data { i32 60, i32 255, i32 0 }, %struct.rk808_reg_data { i32 61, i32 255, i32 224 }, %struct.rk808_reg_data { i32 62, i32 255, i32 31 }, %struct.rk808_reg_data { i32 63, i32 255, i32 9 }, %struct.rk808_reg_data { i32 64, i32 255, i32 105 }, %struct.rk808_reg_data { i32 65, i32 255, i32 68 }, %struct.rk808_reg_data { i32 66, i32 255, i32 4 }, %struct.rk808_reg_data { i32 67, i32 255, i32 0 }, %struct.rk808_reg_data { i32 68, i32 255, i32 48 }, %struct.rk808_reg_data { i32 69, i32 255, i32 25 }, %struct.rk808_reg_data { i32 70, i32 255, i32 101 }, %struct.rk808_reg_data { i32 71, i32 255, i32 1 }, %struct.rk808_reg_data { i32 72, i32 255, i32 1 }, %struct.rk808_reg_data { i32 73, i32 255, i32 0 }, %struct.rk808_reg_data { i32 74, i32 255, i32 0 }, %struct.rk808_reg_data { i32 75, i32 255, i32 23 }, %struct.rk808_reg_data { i32 76, i32 255, i32 0 }, %struct.rk808_reg_data { i32 77, i32 255, i32 0 }, %struct.rk808_reg_data { i32 78, i32 255, i32 23 }, %struct.rk808_reg_data { i32 79, i32 255, i32 0 }, %struct.rk808_reg_data { i32 254, i32 2, i32 0 }, %struct.rk808_reg_data { i32 242, i32 112, i32 32 }], align 4
@rk817s = internal constant [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.14, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @rk817_pwrkey_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rk817_rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Unsupported RK8XX ID %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"No interrupt support, no core IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to add irq_chip %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"0x%x write err\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to add MFD devices %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"rockchip,system-power-controller\00", align 1
@rk808_i2c_client = internal unnamed_addr global ptr null, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"rk805\00", align 1
@rk805_irqs = internal constant [8 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@rk805_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.12, i32 0, i32 0, ptr null, i32 0, i32 76, i32 77, i32 0, i32 76, i32 0, i32 0, ptr null, i32 0, i8 2, i8 0, i32 1, ptr @rk805_irqs, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"rk808-clkout\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"rk808-regulator\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"rk805-pinctrl\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"rk808-rtc\00", align 1
@rtc_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"rk805-pwrkey\00", align 1
@rk805_key_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 7, i32 7, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@rk808_irqs = internal constant [9 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }], align 4
@rk808_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 76, i32 77, i32 0, i32 76, i32 0, i32 0, ptr null, i32 2, i8 2, i8 0, i32 2, ptr @rk808_irqs, i32 9, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"rk818\00", align 1
@rk818_irqs = internal constant [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@rk818_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.20, i32 0, i32 0, ptr null, i32 0, i32 76, i32 77, i32 0, i32 76, i32 0, i32 0, ptr null, i32 2, i8 2, i8 0, i32 2, ptr @rk818_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"rk817\00", align 1
@rk817_irqs = internal constant [24 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@rk817_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.22, i32 0, i32 0, ptr null, i32 0, i32 248, i32 249, i32 0, i32 248, i32 0, i32 0, ptr null, i32 2, i8 2, i8 0, i32 3, ptr @rk817_irqs, i32 24, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@rk817_pwrkey_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@rk817_rtc_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"rk817-codec\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Failed to shutdown device!\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Cannot switch to power down function\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_rk808_i2c_driver_exit, ptr @__initcall__kmod_rk808__247_813_rk808_i2c_driver_init6, ptr @rk808_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk808_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rk808_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk808_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rk808_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 24, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %91, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.1) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.2) #5
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 23, i8 -19
  %15 = select i1 %13, i8 24, i8 -18
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i8 [ -19, %8 ], [ %14, %11 ]
  %18 = phi i8 [ -18, %8 ], [ %15, %11 ]
  %19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %17) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 23) #6
  br label %91

22:                                               ; preds = %16
  %23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext %18) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 24) #6
  br label %91

26:                                               ; preds = %22
  %27 = shl i32 %19, 8
  %28 = or i32 %23, %27
  %29 = and i32 %28, 65520
  %30 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %29) #6
  %31 = trunc i32 %29 to i16
  switch i16 %31, label %35 [
    i16 -32688, label %36
    i16 0, label %32
    i16 -32384, label %33
    i16 -32624, label %34
    i16 -32400, label %34
  ]

32:                                               ; preds = %26
  br label %36

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %26, %26
  br label %36

35:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %29) #6
  br label %91

36:                                               ; preds = %34, %33, %32, %26
  %37 = phi ptr [ @rk817_regmap_config, %34 ], [ @rk818_regmap_config, %33 ], [ @rk808_regmap_config, %32 ], [ @rk805_regmap_config, %26 ]
  %38 = phi ptr [ @rk817_irq_chip, %34 ], [ @rk818_irq_chip, %33 ], [ @rk808_irq_chip, %32 ], [ @rk805_irq_chip, %26 ]
  %39 = phi ptr [ @rk817_pre_init_reg, %34 ], [ @rk818_pre_init_reg, %33 ], [ @rk808_pre_init_reg, %32 ], [ @rk805_pre_init_reg, %26 ]
  %40 = phi ptr [ @rk817s, %34 ], [ @rk818s, %33 ], [ @rk808s, %32 ], [ @rk805s, %26 ]
  %41 = phi i32 [ 77, %34 ], [ 8, %33 ], [ 7, %32 ], [ 6, %26 ]
  %42 = phi i32 [ 5, %34 ], [ 3, %33 ], [ 3, %32 ], [ 5, %26 ]
  %43 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 4
  store ptr %37, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 5
  store ptr %38, ptr %44, align 4
  store ptr %0, ptr %6, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %45, align 8
  %46 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %37, ptr noundef null, ptr noundef null) #5
  %47 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %91

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  br label %91

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 1
  %61 = tail call i32 @regmap_add_irq_chip(ptr noundef %46, i32 noundef %54, i32 noundef 8192, i32 noundef -1, ptr noundef %59, ptr noundef %60) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %61) #6
  br label %91

64:                                               ; preds = %67
  %65 = add nuw nsw i32 %68, 1
  %66 = icmp eq i32 %65, %41
  br i1 %66, label %79, label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %65, %64 ], [ 0, %57 ]
  %69 = load ptr, ptr %47, align 4
  %70 = getelementptr %struct.rk808_reg_data, ptr %39, i32 %68
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.rk808_reg_data, ptr %39, i32 %68, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.rk808_reg_data, ptr %39, i32 %68, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %64, label %78

78:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %71) #6
  br label %91

79:                                               ; preds = %64
  %80 = load ptr, ptr %60, align 4
  %81 = tail call ptr @regmap_irq_get_domain(ptr noundef %80) #5
  %82 = tail call i32 @devm_mfd_add_devices(ptr noundef %3, i32 noundef -1, ptr noundef nonnull %40, i32 noundef %42, ptr noundef null, i32 noundef 0, ptr noundef %81) #5
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %82) #6
  %85 = load i32, ptr %53, align 4
  %86 = load ptr, ptr %60, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %85, ptr noundef %86) #5
  br label %91

87:                                               ; preds = %79
  %88 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store ptr %0, ptr @rk808_i2c_client, align 4
  store ptr @rk808_pm_power_off, ptr @pm_power_off, align 4
  br label %91

91:                                               ; preds = %90, %87, %84, %78, %63, %56, %49, %35, %25, %21, %2
  %92 = phi i32 [ %19, %21 ], [ %23, %25 ], [ -22, %35 ], [ %51, %49 ], [ %61, %63 ], [ %76, %78 ], [ %82, %84 ], [ -22, %56 ], [ -12, %2 ], [ 0, %90 ], [ 0, %87 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #5
  %8 = load ptr, ptr @pm_power_off, align 4
  %9 = icmp eq ptr %8, @rk808_pm_power_off
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store ptr null, ptr @pm_power_off, align 4
  br label %11

11:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk8xx_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %19 [
    i32 32848, label %6
    i32 32912, label %10
    i32 33136, label %10
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 80, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %14

10:                                               ; preds = %1, %1
  %11 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 244, i32 noundef 24, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %13, %10 ], [ %9, %6 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.26) #6
  br label %19

19:                                               ; preds = %17, %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk808_pm_power_off() #2 {
  %1 = load ptr, ptr @rk808_i2c_client, align 4
  %2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %18 [
    i32 32848, label %8
    i32 0, label %6
    i32 33136, label %7
    i32 33152, label %8
  ]

6:                                                ; preds = %0
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %6, %0, %0
  %9 = phi i32 [ 244, %7 ], [ 75, %6 ], [ 75, %0 ], [ 75, %0 ]
  %10 = phi i32 [ 1, %7 ], [ 8, %6 ], [ 1, %0 ], [ 1, %0 ]
  %11 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %9, i32 noundef %10, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @rk808_i2c_client, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25) #6
  br label %18

18:                                               ; preds = %15, %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rk808_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 17, label %4
    i32 33, label %4
    i32 34, label %4
    i32 39, label %4
    i32 41, label %4
    i32 43, label %4
    i32 44, label %4
    i32 75, label %4
    i32 76, label %4
    i32 78, label %4
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 5, label %4
    i32 6, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rk817_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk8xx_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %14 [
    i32 32848, label %6
    i32 32912, label %10
    i32 33136, label %10
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 80, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %14

10:                                               ; preds = %1, %1
  %11 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 244, i32 noundef 24, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %14

14:                                               ; preds = %10, %6, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %10 ], [ %9, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk8xx_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %10 [
    i32 32912, label %6
    i32 33136, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 244, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %6 ]
  ret i32 %11
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
