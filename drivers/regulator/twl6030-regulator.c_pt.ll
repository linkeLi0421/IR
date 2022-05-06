; ModuleID = '/llk/IR/drivers/regulator/twl6030-regulator.c_pt.bc'
source_filename = "../drivers/regulator/twl6030-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.twlreg_info = type { i8, i8, i8, %struct.regulator_desc, i32, ptr }
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
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__UNIQUE_ID_alias247 = internal constant [45 x i8] c"twl6030_regulator.alias=platform:twl6030_reg\00", section ".modinfo", align 1
@__initcall__kmod_twl6030_regulator__248_767_twlreg_init4 = internal global ptr @twlreg_init, section ".initcall4.init", align 4
@twlreg_driver = internal global %struct.platform_driver { ptr @twlreg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_twlreg_exit = internal global ptr @twlreg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [55 x i8] c"twl6030_regulator.description=TWL6030 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [59 x i8] c"twl6030_regulator.file=drivers/regulator/twl6030-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [30 x i8] c"twl6030_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"twl6030_reg\00", align 1
@twl_of_match = internal constant [28 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdd1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VDD1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdd2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VDD2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdd3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VDD3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vaux1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VAUX1_6030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vaux2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VAUX2_6030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vaux3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VAUX3_6030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VMMC }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VPP }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vusim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VUSIM }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldoln\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDOLN }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldousb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDOUSB }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vana\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VANA }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vcxio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VCXIO }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VDAC }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-v1v8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_V1V8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-v2v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_V2V1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-smps3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLSMPS_INFO_SMPS3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-smps4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLSMPS_INFO_SMPS4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-vio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLSMPS_INFO_VIO }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ti,retain-on-reset\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't register %s, %ld\0A\00", align 1
@TWL6030_INFO_VDD1 = internal constant %struct.twlreg_info { i8 0, i8 0, i8 0, %struct.regulator_desc { ptr @.str.3, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 0, i32 0, ptr @twl6030coresmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VDD2 = internal constant %struct.twlreg_info { i8 0, i8 0, i8 0, %struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 0, i32 0, ptr @twl6030coresmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VDD3 = internal constant %struct.twlreg_info { i8 0, i8 0, i8 0, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 0, i32 0, ptr @twl6030coresmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VAUX1_6030 = internal constant %struct.twlreg_info { i8 84, i8 0, i8 0, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 37, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VAUX2_6030 = internal constant %struct.twlreg_info { i8 88, i8 0, i8 0, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 38, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VAUX3_6030 = internal constant %struct.twlreg_info { i8 92, i8 0, i8 0, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 39, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VMMC = internal constant %struct.twlreg_info { i8 104, i8 0, i8 0, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 40, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VPP = internal constant %struct.twlreg_info { i8 108, i8 0, i8 0, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 41, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6030_INFO_VUSIM = internal constant %struct.twlreg_info { i8 116, i8 0, i8 0, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 42, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO2 = internal constant %struct.twlreg_info { i8 84, i8 0, i8 0, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 49, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO4 = internal constant %struct.twlreg_info { i8 88, i8 0, i8 0, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 50, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO3 = internal constant %struct.twlreg_info { i8 92, i8 0, i8 0, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 51, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO5 = internal constant %struct.twlreg_info { i8 104, i8 0, i8 0, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 52, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO1 = internal constant %struct.twlreg_info { i8 108, i8 0, i8 0, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 53, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO7 = internal constant %struct.twlreg_info { i8 116, i8 0, i8 0, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 54, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDO6 = internal constant %struct.twlreg_info { i8 96, i8 0, i8 0, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 55, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDOLN = internal constant %struct.twlreg_info { i8 100, i8 0, i8 0, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 56, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWL6032_INFO_LDOUSB = internal constant %struct.twlreg_info { i8 112, i8 0, i8 0, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 57, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VANA = internal constant %struct.twlreg_info { i8 80, i8 0, i8 0, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 43, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 2100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VCXIO = internal constant %struct.twlreg_info { i8 96, i8 0, i8 0, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 44, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VDAC = internal constant %struct.twlreg_info { i8 100, i8 0, i8 0, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 45, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VUSB = internal constant %struct.twlreg_info { i8 112, i8 0, i8 0, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 46, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 3300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_V1V8 = internal constant %struct.twlreg_info { i8 22, i8 0, i8 0, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_V2V1 = internal constant %struct.twlreg_info { i8 28, i8 0, i8 0, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 2100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLSMPS_INFO_SMPS3 = internal constant %struct.twlreg_info { i8 52, i8 0, i8 0, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 58, i8 0, i32 63, i32 0, ptr @twlsmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLSMPS_INFO_SMPS4 = internal constant %struct.twlreg_info { i8 16, i8 0, i8 0, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 59, i8 0, i32 63, i32 0, ptr @twlsmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@TWLSMPS_INFO_VIO = internal constant %struct.twlreg_info { i8 22, i8 0, i8 0, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 60, i8 0, i32 63, i32 0, ptr @twlsmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"VDD1\00", align 1
@twl6030coresmps_ops = internal constant %struct.regulator_ops { ptr null, ptr @twl6030coresmps_set_voltage, ptr null, ptr null, ptr @twl6030coresmps_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"VDD2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"VDD3\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"VAUX1_6030\00", align 1
@twl6030ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @twl6030ldo_set_voltage_sel, ptr null, ptr @twl6030ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_enable, ptr @twl6030reg_disable, ptr @twl6030reg_is_enabled, ptr @twl6030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@twl6030ldo_linear_range = internal constant [3 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 1000000, i32 1, i32 24, i32 100000 }, %struct.linear_range { i32 2750000, i32 31, i32 31, i32 0 }], align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"VAUX2_6030\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"VAUX3_6030\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"VMMC\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"VPP\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"VUSIM\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"LDOLN\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"LDOUSB\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"VANA\00", align 1
@twl6030fixed_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_enable, ptr @twl6030reg_disable, ptr @twl6030reg_is_enabled, ptr @twl6030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"VCXIO\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"VDAC\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"VUSB\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"V1V8\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"V2V1\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"SMPS3\00", align 1
@twlsmps_ops = internal constant %struct.regulator_ops { ptr @twl6030smps_list_voltage, ptr null, ptr @twl6030smps_map_voltage, ptr @twl6030smps_set_voltage_sel, ptr null, ptr @twl6030smps_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_enable, ptr @twl6030reg_disable, ptr @twl6030reg_is_enabled, ptr @twl6030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"SMPS4\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"VIO\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_twlreg_exit, ptr @__initcall__kmod_twl6030_regulator__248_767_twlreg_init4, ptr @twlreg_exit], section "llvm.metadata"
@switch.table.twl6030reg_get_status = private unnamed_addr constant [4 x i32] [i32 0, i32 4, i32 0, i32 6], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @twlreg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @twlreg_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @twlreg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @twlreg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twlreg_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  %9 = getelementptr inbounds i8, ptr %8, i32 16
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %10) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.twlreg_info, ptr %13, i32 0, i32 3
  %17 = getelementptr inbounds %struct.twlreg_info, ptr %13, i32 0, i32 3, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @of_get_regulator_init_data(ptr noundef %10, ptr noundef %12, ptr noundef %16) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %96, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @devm_kmemdup(ptr noundef %10, ptr noundef nonnull %13, i32 noundef 256, i32 noundef 3264) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %96, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.regulator_init_data, ptr %19, i32 0, i32 1, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 10
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.regulator_init_data, ptr %19, i32 0, i32 1, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 13
  store i32 %30, ptr %28, align 4
  switch i32 %18, label %77 [
    i32 58, label %31
    i32 59, label %45
    i32 60, label %59
  ]

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !8
  %32 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %7, i8 noundef zeroext -77, i32 noundef 1) #6
  %33 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %34 = and i8 %33, 64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.twlreg_info, ptr %22, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = or i8 %38, 2
  store i8 %39, ptr %37, align 2
  br label %40

40:                                               ; preds = %36, %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  %41 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %6, i8 noundef zeroext -80, i32 noundef 1) #6
  %42 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %43 = and i8 %42, 64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %77, label %73

45:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  %46 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %5, i8 noundef zeroext -77, i32 noundef 1) #6
  %47 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.twlreg_info, ptr %22, i32 0, i32 2
  %52 = load i8, ptr %51, align 2
  %53 = or i8 %52, 2
  store i8 %53, ptr %51, align 2
  br label %54

54:                                               ; preds = %50, %45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !8
  %55 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %4, i8 noundef zeroext -80, i32 noundef 1) #6
  %56 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %77, label %73

59:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %60 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext -77, i32 noundef 1) #6
  %61 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %62 = and i8 %61, 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.twlreg_info, ptr %22, i32 0, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = or i8 %66, 2
  store i8 %67, ptr %65, align 2
  br label %68

68:                                               ; preds = %64, %59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %69 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext -80, i32 noundef 1) #6
  %70 = load i8, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68, %54, %40
  %74 = getelementptr inbounds %struct.twlreg_info, ptr %22, i32 0, i32 2
  %75 = load i8, ptr %74, align 2
  %76 = or i8 %75, 1
  store i8 %76, ptr %74, align 2
  br label %77

77:                                               ; preds = %73, %68, %54, %40, %24
  %78 = call ptr @of_get_property(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.twlreg_info, ptr %22, i32 0, i32 2
  %82 = load i8, ptr %81, align 2
  %83 = or i8 %82, 8
  store i8 %83, ptr %81, align 2
  br label %84

84:                                               ; preds = %80, %77
  store ptr %10, ptr %8, align 4
  %85 = getelementptr inbounds %struct.regulator_config, ptr %8, i32 0, i32 1
  store ptr %19, ptr %85, align 4
  %86 = getelementptr inbounds %struct.regulator_config, ptr %8, i32 0, i32 2
  store ptr %22, ptr %86, align 4
  %87 = getelementptr inbounds %struct.regulator_config, ptr %8, i32 0, i32 3
  store ptr %12, ptr %87, align 4
  %88 = getelementptr inbounds %struct.twlreg_info, ptr %22, i32 0, i32 3
  %89 = call ptr @devm_regulator_register(ptr noundef %10, ptr noundef %88, ptr noundef nonnull %8) #6
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load ptr, ptr %88, align 4
  %93 = ptrtoint ptr %89 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef %92, i32 noundef %93) #7
  br label %96

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %89, ptr %95, align 8
  br label %96

96:                                               ; preds = %94, %91, %21, %15, %1
  %97 = phi i32 [ %93, %91 ], [ 0, %94 ], [ -19, %1 ], [ -22, %15 ], [ -12, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  ret i32 %97
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @twl6030coresmps_set_voltage(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @twl6030coresmps_get_voltage(ptr nocapture noundef readnone %0) #5 {
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030ldo_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.twlreg_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = shl i8 %6, 4
  %8 = and i8 %7, -128
  %9 = trunc i32 %1 to i8
  %10 = or i8 %8, %9
  %11 = load i8, ptr %4, align 4
  %12 = add i8 %11, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %10, ptr %3, align 1
  %13 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030ldo_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr %3, align 4
  %5 = add i8 %4, 3
  %6 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %5, i32 noundef 1) #6
  %7 = icmp slt i32 %6, 0
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = select i1 %7, i32 %6, i32 %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %11 = getelementptr inbounds %struct.twlreg_info, ptr %3, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  %15 = and i32 %10, -129
  %16 = select i1 %14, i32 %10, i32 %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030reg_enable(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = tail call i32 @twl_rev() #6
  %6 = icmp eq i32 %5, 24624
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.twlreg_info, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7, %1
  %13 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %14 = load i8, ptr %13, align 4
  %15 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %14, i32 noundef 1) #6
  %16 = icmp slt i32 %15, 0
  %17 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br i1 %16, label %25, label %18

18:                                               ; preds = %12, %7
  %19 = phi i8 [ %17, %12 ], [ 0, %7 ]
  %20 = shl i8 %19, 5
  %21 = or i8 %20, 1
  %22 = load i8, ptr %4, align 4
  %23 = add i8 %22, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 %21, ptr %2, align 1
  %24 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %23, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi i32 [ %24, %18 ], [ %15, %12 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030reg_disable(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = tail call i32 @twl_rev() #6
  %5 = icmp eq i32 %4, 24624
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.twlreg_info, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i8 [ 0, %6 ], [ -32, %11 ]
  %14 = load i8, ptr %3, align 4
  %15 = add i8 %14, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 %13, ptr %2, align 1
  %16 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030reg_is_enabled(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = tail call i32 @twl_rev() #6
  %6 = icmp eq i32 %5, 24624
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.twlreg_info, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7, %1
  %13 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %14 = load i8, ptr %13, align 4
  %15 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %14, i32 noundef 1) #6
  %16 = icmp slt i32 %15, 0
  %17 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br i1 %16, label %34, label %18

18:                                               ; preds = %12
  %19 = and i8 %17, 1
  %20 = icmp ne i8 %19, 0
  br label %21

21:                                               ; preds = %18, %7
  %22 = phi i1 [ %20, %18 ], [ true, %7 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %23 = load i8, ptr %4, align 4
  %24 = add i8 %23, 2
  %25 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %24, i32 noundef 1) #6
  %26 = icmp slt i32 %25, 0
  %27 = load i8, ptr %2, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 %25, i32 %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %30 = and i32 %29, 12
  %31 = icmp eq i32 %30, 4
  %32 = select i1 %22, i1 %31, i1 false
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %21, %12
  %35 = phi i32 [ %33, %21 ], [ %15, %12 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030reg_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %6 = tail call i32 @twl_rev() #6
  %7 = icmp eq i32 %6, 24624
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.twlreg_info, ptr %5, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8, %2
  %14 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !8
  %15 = load i8, ptr %14, align 4
  %16 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %4, i8 noundef zeroext %15, i32 noundef 1) #6
  %17 = icmp slt i32 %16, 0
  %18 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  br i1 %17, label %29, label %19

19:                                               ; preds = %13, %8
  %20 = phi i8 [ %18, %13 ], [ 0, %8 ]
  %21 = shl i8 %20, 5
  switch i32 %1, label %29 [
    i32 2, label %23
    i32 8, label %22
  ]

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i8 [ 3, %22 ], [ 1, %19 ]
  %25 = or i8 %21, %24
  %26 = load i8, ptr %5, align 4
  %27 = add i8 %26, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %25, ptr %3, align 1
  %28 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %27, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br label %29

29:                                               ; preds = %23, %19, %13
  %30 = phi i32 [ %28, %23 ], [ -22, %19 ], [ %16, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030reg_get_status(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = load i8, ptr %5, align 4
  %7 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %6, i32 noundef 1) #6
  %8 = icmp slt i32 %7, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %10 = load i8, ptr %4, align 4
  %11 = add i8 %10, 2
  %12 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %11, i32 noundef 1) #6
  %13 = icmp slt i32 %12, 0
  %14 = load i8, ptr %2, align 1
  %15 = zext i8 %14 to i32
  %16 = select i1 %13, i32 %12, i32 %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %17 = lshr i32 %16, 2
  %18 = and i32 %17, 3
  %19 = getelementptr inbounds [4 x i32], ptr @switch.table.twl6030reg_get_status, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %9, %1
  %22 = phi i32 [ %7, %1 ], [ %20, %9 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030smps_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.twlreg_info, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  switch i8 %5, label %36 [
    i8 1, label %6
    i8 0, label %7
    i8 2, label %18
    i8 3, label %27
  ]

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 0, %2 ], [ 100000, %6 ]
  switch i32 %1, label %14 [
    i32 0, label %36
    i32 58, label %9
    i32 59, label %10
    i32 60, label %11
    i32 61, label %12
    i32 62, label %13
  ]

9:                                                ; preds = %7
  br label %36

10:                                               ; preds = %7
  br label %36

11:                                               ; preds = %7
  br label %36

12:                                               ; preds = %7
  br label %36

13:                                               ; preds = %7
  br label %36

14:                                               ; preds = %7
  %15 = mul i32 %1, 12500
  %16 = add i32 %15, 587500
  %17 = add i32 %16, %8
  br label %36

18:                                               ; preds = %2
  switch i32 %1, label %24 [
    i32 0, label %36
    i32 58, label %19
    i32 59, label %20
    i32 60, label %21
    i32 61, label %22
    i32 62, label %23
  ]

19:                                               ; preds = %18
  br label %36

20:                                               ; preds = %18
  br label %36

21:                                               ; preds = %18
  br label %36

22:                                               ; preds = %18
  br label %36

23:                                               ; preds = %18
  br label %36

24:                                               ; preds = %18
  %25 = mul i32 %1, 38600
  %26 = add i32 %25, 1813400
  br label %36

27:                                               ; preds = %2
  switch i32 %1, label %33 [
    i32 0, label %36
    i32 58, label %28
    i32 59, label %29
    i32 60, label %30
    i32 61, label %31
    i32 62, label %32
  ]

28:                                               ; preds = %27
  br label %36

29:                                               ; preds = %27
  br label %36

30:                                               ; preds = %27
  br label %36

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27
  %34 = mul i32 %1, 38600
  %35 = add i32 %34, 2122400
  br label %36

36:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %24, %23, %22, %21, %20, %19, %18, %14, %13, %12, %11, %10, %9, %7, %2
  %37 = phi i32 [ 0, %2 ], [ %35, %33 ], [ 3241000, %32 ], [ 2932000, %31 ], [ 2778000, %30 ], [ 2315000, %29 ], [ 4167000, %28 ], [ %26, %24 ], [ 3241000, %23 ], [ 2932000, %22 ], [ 2778000, %21 ], [ 2315000, %20 ], [ 2084000, %19 ], [ %17, %14 ], [ 2100000, %13 ], [ 1900000, %12 ], [ 1800000, %11 ], [ 1500000, %10 ], [ 1350000, %9 ], [ %1, %7 ], [ %1, %18 ], [ %1, %27 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030smps_map_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.twlreg_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  switch i8 %6, label %69 [
    i8 0, label %7
    i8 1, label %31
    i8 2, label %52
    i8 3, label %62
  ]

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %7
  %10 = add i32 %1, -600000
  %11 = icmp ult i32 %10, 700001
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = add nsw i32 %1, -587501
  %14 = udiv i32 %13, 12500
  %15 = add nuw nsw i32 %14, 1
  br label %69

16:                                               ; preds = %9
  %17 = add i32 %1, -1900001
  %18 = icmp ult i32 %17, 200000
  br i1 %18, label %69, label %19

19:                                               ; preds = %16
  %20 = add i32 %1, -1800001
  %21 = icmp ult i32 %20, 100000
  br i1 %21, label %69, label %22

22:                                               ; preds = %19
  %23 = add i32 %1, -1500001
  %24 = icmp ult i32 %23, 300000
  br i1 %24, label %69, label %25

25:                                               ; preds = %22
  %26 = add i32 %1, -1350001
  %27 = icmp ult i32 %26, 150000
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = add i32 %1, -1300001
  %30 = icmp ult i32 %29, 50000
  br i1 %30, label %69, label %71

31:                                               ; preds = %3
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %31
  %34 = add i32 %1, -700000
  %35 = icmp ult i32 %34, 720001
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = add nsw i32 %1, -687501
  %38 = udiv i32 %37, 12500
  %39 = add nuw nsw i32 %38, 1
  br label %69

40:                                               ; preds = %33
  %41 = add i32 %1, -1900001
  %42 = icmp ult i32 %41, 200000
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = add i32 %1, -1800001
  %45 = icmp ult i32 %44, 100000
  br i1 %45, label %69, label %46

46:                                               ; preds = %43
  %47 = add i32 %1, -1500001
  %48 = icmp ult i32 %47, 300000
  br i1 %48, label %69, label %49

49:                                               ; preds = %46
  %50 = add i32 %1, -1350001
  %51 = icmp ult i32 %50, 150000
  br i1 %51, label %69, label %71

52:                                               ; preds = %3
  %53 = icmp eq i32 %1, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %52
  %55 = icmp sgt i32 %1, 1851999
  %56 = icmp slt i32 %2, 4013601
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = add nsw i32 %1, -1813401
  %60 = udiv i32 %59, 38600
  %61 = add nuw nsw i32 %60, 1
  br label %69

62:                                               ; preds = %3
  %63 = add i32 %1, -2161000
  %64 = icmp ult i32 %63, 2160001
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = add nsw i32 %1, -2122401
  %67 = udiv i32 %66, 38600
  %68 = add nuw nsw i32 %67, 1
  br label %69

69:                                               ; preds = %65, %62, %58, %54, %52, %49, %46, %43, %40, %36, %31, %28, %25, %22, %19, %16, %12, %7, %3
  %70 = phi i32 [ 0, %3 ], [ %68, %65 ], [ %61, %58 ], [ 0, %54 ], [ %39, %36 ], [ %15, %12 ], [ 0, %7 ], [ 62, %16 ], [ 61, %19 ], [ 60, %22 ], [ 59, %25 ], [ 58, %28 ], [ 0, %31 ], [ 62, %40 ], [ 61, %43 ], [ 60, %46 ], [ 59, %49 ], [ 0, %52 ], [ 0, %62 ]
  br label %71

71:                                               ; preds = %69, %49, %28
  %72 = phi i32 [ %70, %69 ], [ -22, %28 ], [ -22, %49 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030smps_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = trunc i32 %1 to i8
  %6 = load i8, ptr %4, align 4
  %7 = add i8 %6, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %5, ptr %3, align 1
  %8 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %7, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030smps_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr %3, align 4
  %5 = add i8 %4, 4
  %6 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %5, i32 noundef 1) #6
  %7 = icmp slt i32 %6, 0
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = select i1 %7, i32 %6, i32 %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %10
}

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
